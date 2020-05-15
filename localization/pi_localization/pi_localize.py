from utils import Utils
import json
import numpy as np
from scipy import spatial
import RPi.GPIO as GPIO
import time
import os
import numpy as np
from lib_utils import *
from picamera import PiCamera


path_to_json_in = "./3d_map/sfm_data_des.json"
mask_path = "./masks/120_mask.jpg"


# PREPROCESSING mask and 3D map
mask = cv2.imread(mask_path, cv2.IMREAD_GRAYSCALE)
sifter = cv2.xfeatures2d.SIFT_create() # argument: num of scored des to retain
FOV_120_radius = 590

inhomo_des = Utils.load_3d_feat_map(path_to_json_in)
des_tree = spatial.cKDTree(inhomo_des_list, 10000)
N_pnp = 15

# PREPROCESSING Picam
def take_photo():
	# RIGHT camera 
	# GPIO.output(CAMLED, False)
	# picam.capture('{}_sr.jpg'.format(U_FILENAME))
	# picam.capture(FILEPATH + FILENAME + str(i) + ".jpg")

    # LEFT camera
	GPIO.output(CAMLED, True)
	picam.capture(rawCapture, format = "bgr")
	return cv2.cvtColor(rawCapture.array, cv2.COLOR_BGR2GRAY)

# picam.capture(self.img, 'rgb', use_video_port=True) 
# self.img = np.empty((U_CAM_MRES, U_CAM_NRES, 3), dtype=np.uint8)

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
CAMLED = 40
GPIO.setup(CAMLED, GPIO.OUT)

picam = PiCamera()
picam.resolution = (2592, 1944) # full resolution for calibration
picam.framerate = 15
picam.rotation = 180
# TODO: check if cv2 recognizes as grey scale if picam.color_effects = (128, 128)
rawCapture = PiRGBArray(picam, size=(2592, 1944))
N = 60

# PIPELINE
#	take image 
#	mask image
# 	sift 
# 	filter out features at the circular jagged edges
#	choose 6 features
# 	localize
for i in range(N) :
	pi_img = take_photo()
	masked_img = cv2.bitwise_and(pi_img, pi_img, mask = mask)

	kp, des = Utils.get_features([masked_img], sifter, FOV_120_radius)

	# TODO: 
	#	sample N_pnp points d distance from each other

	inhomo_select = random.sample(range(len(kp)), N_pnp)

	inhomo_points = kp[i][inhomo_select[i]]
	descriptors = des[i][inhomo_select[i]]
	dists, neighs = des_tree.query(descriptors)
	homo_points = [inhomo_to_homo_map[neigh] for neigh in neighs]

	# undistort inhomo_points 
	undist_inhomo = Utils.undistort_inhomo_points(inhomo_points)
	undist_inhomo = np.reshape(undist_inhomo, (N_pnp, 2))

	c_tilde = Utils.camera_position(undist_inhomo, homo_points)


	# TODO:
	#	store photos 
	#	store times for each iteration
	#	store position and plot to test




GPIO.cleanup()



