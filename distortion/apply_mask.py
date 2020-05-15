import cv2
import glob
import numpy as np
import subprocess
import os
import json
from lib_utils import *

WIDTH = 2592
HEIGHT = 1944

# path_to_imgs = "./raw_photos/"
path_to_imgs = "./data/"
# path_to_write = "./masked_photos/"
path_to_write = "./data/masked/"
mask_path = glob.glob("./grey_photos/mask/120_mask.jpg")
file_list = sorted(glob.glob(path_to_imgs + "*.jpg"))

mask = cv2.imread(mask_path[0], cv2.IMREAD_GRAYSCALE)


for file in file_list :
    img = cv2.imread(file, cv2.COLOR_BGR2RGB)
    masked_img = cv2.bitwise_and(img, img, mask = mask)
    status = cv2.imwrite(path_to_write + "120_masked_" + os.path.basename(file), 
                        masked_img)


