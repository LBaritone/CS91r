
import cv2
import numpy as np 
from scipy import spatial



class Utils :
	# center from Florian's fisheye calbration 
	center = np.array([1.240887736413883e+03, 9.890661037168528e+02])
	# Calibration output using a 120 degree FOV mask 
	DIM=(2592, 1944)
	K = np.array([[532.8374483709025, 0.0, 1323.5238702364265], 
				[0.0, 536.6015662204508, 1008.8504292770152], 
				[0.0, 0.0, 1.0]])
	D = np.array([[0.047931509029697845], [0.14884515981140226], 
				[-0.28941677361542034], [0.1372820934206123]])

	# For testing purposes 
	# RETURN types :
	#	list of grey scale images
	@staticmethod
	def get_images_grey(pos_list) :
		return np.array([cv2.cvtColor(cv2.imread(file), cv2.COLOR_BGR2GRAY)
						for file in pos_list])

	# Loads the map of 3d points into memory. Each 3d point is associated with a 
	# list of image descriptors. 
	# RETURN types :
	#	inhomo_des_list (list): a pooled list of every descriptor  
	#	inhomo_to_homo_map (dict): map from index in inhomo_des_list to 
	#							   associated 3d point
	@staticmethod						  
	def load_3d_feat_map(path) :
		inhomo_des_list = []
		inhomo_to_homo_map = {}
		map_count = 0 

		with open(path) as json_file:
			data = json.load(json_file)
			for homo in data["structure"] :
				for inhomo in homo["value"]["observations"] :
					inhomo_to_homo_map[map_count] = homo["value"]["X"]
					map_count += 1

					inhomo_des.append(inhomo["des"])

		return inhomo_to_homo_map,  inhomo_des_list

	# Extracts key feature descriptors and pixel coordinates from a list of 
	# images
	# RETURN types :
	#	kd (list) : 2d list of pixel coordinates within radius distance to 
	#				center of image
	#	des (list) : 2d list of image descriptors
	@staticmethod
	def get_features(images_gray, sift, radius) :
		kp, des = [], []
		for i in range(len(images_gray)) :
			kp_i, des_i = sift.detectAndCompute(images_gray[i], None)        
			kp_i_j, des_i_j = [], []
			for j in range(len(kp_i)) :
				point = np.array(kp_i[j].pt)
				if spatial.distance.euclidean(point, Utils.center) < radius :
					kp_i_j.append(kp_i[j].pt)
					des_i_j.append(des_i[j])

			kp.append(np.array(kp_i_j))
			des.append(np.array(des_i_j))

		if len(kp) == 1 and len(des) == 1 :
			return np.array(kp[0]), np.array(des[0])
		else :
			return np.array(kp), np.array(des)

	# Given a choice of pixel coordinates (imput list), convert them from a 
	# fisheye model to a pinhole camera model with intrinsic params Utils.K
	# RETURN types :
	#	(list) of undistorted pixel coordinates 
	@staticmethod
	def undistort_inhomo_points(inhomo_points) :
		inhomo_points = np.array(inhomo_points)
		inhomo_points = inhomo_points[:, 0:2].astype('float32')
		inhomo_points = np.expand_dims(inhomo_points, axis=1)  # (n, 1, 2)
		return cv2.fisheye.undistortPoints(inhomo_points, 
										   Utils.K, 
										   Utils.D, 
										   P=Utils.K.copy())

	# Solves PnP (Perspective-n-Point), the the problem of estimating the pose 
	# of a calibrated camera given a set of n 3D points in the world and their
	# corresponding 2D projections in the image
	# Return types :
	# 	(tuple)
	def cv2_pnp(inhomo_points, homo_points) :
		inhomo_points = np.array(inhomo_points)
		inhomo_points = inhomo_points[:, 0:2].astype('float32')
		inhomo_points = np.expand_dims(inhomo_points, axis=1)  # (n, 1, 2)

		homo_points = np.array(homo_points)
		homo_points = homo_points[:, 0:3].astype('float32')
		homo_points = np.expand_dims(homo_points, axis=1)  # (n, 1, 3)

		d = distCoeffs = np.zeros((4,1))
		return cv2.solvePnP(homo_points, inhomo_points, Utils.K, d)

	# Find the camera position given a calabrated camera and a list of 2d points
	# and their corresponding 3d points and convert to world coordinates i.e.
	# the same rotational frame as the points in the 3d map
	# RETURN types:
	#	c_tilde (list) : 3d coordinates of the center of the camera 
	@staticmethod
	def camera_position(inhomo_points, homo_points) :
		retval, rval, tval = Utils.cv2_pnp(inhomo_points, homo_points)

		# c_tilde = -R^-1 * t where c is the camera position in world coordinates
		c_tilde = np.dot(- np.linalg.inv(cv2.Rodrigues(rval)[0]), tval)
		return c_tilde









