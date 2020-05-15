import cv2
import glob
import math
import numpy as np
import subprocess
import os
import json
from lib_utils import *

WIDTH = 2592
HEIGHT = 1944
OLD_WIDTH = 1920
OLD_HEIGHT = 1080

path_to_imgs = "./raw_photos/"
path_to_write = "./grey_photos/"
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


img = cv2.imread(file_list[0], cv2.IMREAD_GRAYSCALE)
mask = np.zeros((HEIGHT, WIDTH))

# filter for theta < phi 
FOV = 170
phi = FOV / 2
in_dir = np.array([0, 0, -1]).T


for m in range(HEIGHT) :
	for n in range(WIDTH) :
		mn = np.array([[m], [n]])
		uvw = mn_to_uvw(mn)

		ab_dot = np.dot(in_dir, uvw)
		ab_norm = np.linalg.norm(in_dir) * np.linalg.norm(uvw)
		theta = math.acos(ab_dot / ab_norm) * 180. / math.pi

        # in the field of view if angle is small enough
		if theta < phi :
			mask[m, n] = 1

cv2.imwrite(path_to_write + "170_mask.jpg", mask)


