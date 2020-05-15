import glob
from utils import Utils
import json
import numpy as np
from scipy import spatial
import matplotlib.pyplot as plt
from pprint import pprint
from mpl_toolkits.mplot3d import Axes3D
import random
import cv2

# path_to_json_in = "../openMVG_Build/software/SfM/tutorial_fish/reconstruction_global/sfm_data_des.json"
path_to_json_in = "./3Dmaps/sfm_data_des.json"
path_to_pos = "./positions/"
pos_list = sorted(glob.glob(path_to_pos + "*.jpg"))
print(pos_list)

sifter = cv2.SIFT_create() # argument: num of scored des to retain
FOV_120_radius = 590
N_pnp = 6


# TODO: make bins here in order to map kd tree query result
# (index of closest descriptor) to 3D homogeneous point
# solution: make 1 to 1 map 
inhomo_to_homo_map = {}
map_count = 0 
inhomo_des = []

with open(path_to_json_in) as json_file:
	data = json.load(json_file)
	for homo in data["structure"] :
		for inhomo in homo["value"]["observations"] :
			inhomo_to_homo_map[map_count] = homo["value"]["X"]
			map_count += 1

			inhomo_des.append(inhomo["des"])

print(inhomo_des[100])
des_tree = spatial.cKDTree(inhomo_des)

pos_images_grey = Utils.get_images_grey(pos_list)
kp, des = Utils.get_features(pos_images_grey, sifter, FOV_120_radius)

# use flan matching to 

# create method for selecting 6 inhomogeneous points to match to 3D points
# inhomo_select = [list(range(250,256)), list(range(250,256)), list(range(250,256))]
# inhomo_select = [[250, 270, 290, 300, 360, 400], [230, 240, 300, 330, 360, 370], [190, 180, 200, 220, 260, 280]]
inhomo_select = [random.sample(range(len(kp[k])), N_pnp) for k in range(len(pos_images_grey))]
# inhomo_select = [[35, 49, 52, 9, 28, 14], [25, 20, 23, 44, 9, 7]]

# # to DISPLAY
fig = plt.figure(figsize=(30,10))
for i in range(len(pos_images_grey)) :
    plt.subplot(1, 3, i + 1)
#     plt.imshow(images[i])
    plt.imshow(pos_images_grey[i], cmap='gray')
    # plt.plot(kp[i][:, 0], kp[i][:, 1], 'r.')
    plt.plot(kp[i][:, 0][inhomo_select[i]], kp[i][:, 1][inhomo_select[i]], 'b.')
    # plt.plot(kp[i][:, 0][250:256], kp[i][:, 1][250:256], 'b.')

plt.show()


fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
total_points = []
camera_points = []

# for each image, 
for i in range(len(pos_images_grey)) :
# for i in range(3) :

	inhomo_points = kp[i][inhomo_select[i]]
	descriptors = des[i][inhomo_select[i]]
	dists, neighs = des_tree.query(descriptors)
	homo_points = [inhomo_to_homo_map[neigh] for neigh in neighs]

	# undistort inhomo_points 
	undist_inhomo = Utils.undistort_inhomo_points(inhomo_points)
	undist_inhomo = np.reshape(undist_inhomo, (N_pnp, 2))

	c_tilde = Utils.camera_position(undist_inhomo, homo_points)
	print(c_tilde)

	total_points.extend(homo_points)
	camera_points.extend((c_tilde.transpose()).tolist())

total_points = np.array(total_points)
camera_points = np.array(camera_points)
ax.scatter(total_points[:, 0], total_points[:, 1], total_points[:, 2])
ax.scatter(camera_points[:, 0], camera_points[:, 1], camera_points[:, 2])
ax.set_xlim3d(-1, 1)
ax.set_ylim3d(-1, 1)
ax.set_zlim3d(-0.2, 2)
plt.show()





