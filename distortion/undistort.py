import cv2
import glob
import numpy as np
import subprocess
import os
import json
from lib_utils import *
import cython 

WIDTH = 2592
HEIGHT = 1944
OLD_WIDTH = 1920
OLD_HEIGHT = 1080

path_to_imgs = "./raw_photos/"
path_to_write = "./grey_photos/"
mask_path = glob.glob(path_to_write + "mask/mask.jpg")
file_list = sorted(glob.glob(path_to_imgs + "*.jpg"))

def mn_to_uvw(mn):
    """Uses camera calibration to derive uvw rays in the camera frame from mn coordinates in the image plane.
    
    Args:
        mn (float): Pixel coordinates of blob centroids
    
    Returns:
        float: uvw rays in the camera frame 
    """
    scaling_factor = 2592 / U_CAM_NRES

    A_inv = np.array([[1., -U_CAM_d], [-U_CAM_e, U_CAM_c]])
    T = np.array([[U_CAM_xc, U_CAM_yc]]).T
    mn_dash = A_inv @ (scaling_factor * mn - T)

    rho = np.linalg.norm(mn_dash, axis=0)
    z = np.polyval(U_CAM_ss, rho)

    uvw = np.vstack((mn_dash, z))
    uvw_norm = np.linalg.norm(uvw, axis=0)
    uvw = uvw / uvw_norm[None, :]

    return uvw


# img = cv2.imread(file_list[0], cv2.IMREAD_GRAYSCALE)
# mask = np.zeros((HEIGHT, WIDTH))

# for m in range(HEIGHT) :
# 	for n in range(WIDTH) :
# 		mn = np.array([[m], [n]])
# 		uvw = mn_to_uvw(mn)

# 		if uvw[2][0] < 0 :
# 			mask[m, n] = 1

# status = cv2.imwrite(path_to_write + "mask.jpg", mask)
# status = cv2.imwrite(path_to_write + "grey_fist.jpg", np.dot(mask, img.T))

mask = cv2.imread(mask_path[0], cv2.IMREAD_GRAYSCALE)

n = 314
count_1 = 0
count_0 = 0
for m in range(HEIGHT) :
	if mask[m, n] :
		count_1 += 1
	else :
		count_0 += 1

print("zeros: ", count_0)

print("ones: ", count_1)




# for file in file_list :
# 	img = cv2.imread(file, cv2.IMREAD_GRAYSCALE)
# 	status = cv2.imwrite(path_to_write + "grey_" + os.path.basename(file), 
# 						 img)


