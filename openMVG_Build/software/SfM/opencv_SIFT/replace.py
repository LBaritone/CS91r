import os 
import cv2 
import glob
import numpy as np
from utils import Utils

def to_format(number) :
	dec = "{:.6f}".format(number)
	if dec[0] == "0" :
		return dec
	else :
		return dec[:7]

IMG_PATH = "../ImageDataset_aquarium/"
DESC_PATH = "../tutorial_fish/matches/"
FEAT_PATH = "../tutorial_fish/matches/"
img_paths = sorted(glob.glob(IMG_PATH + "*.jpg"))
desc_paths = sorted(glob.glob(DESC_PATH + "*.desc"))
feat_paths = sorted(glob.glob(FEAT_PATH + "*.feat"))
N = len(img_paths)

sifter = cv2.SIFT_create() 
img_list = Utils.get_images_grey(img_paths)
kp, des = Utils.get_features(img_list, sifter)

count = 0
for feat, desc in zip(feat_paths, desc_paths) :
# feat, desc = feat_paths[0], desc_paths[0]
	with open(desc, 'wb') as d, open(feat, 'w') as f :
		d.truncate()
		d.seek(0)
		N = len(des[count])
		des_arr = np.hstack(des[count])
		des_arr = np.insert(des_arr, 0, N)
		d.write(bytearray(des_arr.astype(np.uint8)))

		f.truncate()
		f.seek(0)
		for j in range(len(kp[count])) :
			point = kp[count][j].pt
			size = kp[count][j].size
			angle = kp[count][j].angle
			f.write(to_format(point[0]) + " " + to_format(point[1]) + " " + 
					to_format(size) + " " + to_format(angle) + "\n")

		count += 1

# print(img_paths)
# print(desc_paths)
# print(feat_paths)