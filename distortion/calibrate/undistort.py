import numpy as np
import cv2
import sys
import os
import matplotlib.pyplot as plt

fig = plt.figure()

# You should replace these 3 lines with the output in calibration step
# DIM=XXX
# K=np.array(YYY)
# D=np.array(ZZZ)

DIM=(2592, 1944)
K=np.array([[532.8374483709025, 0.0, 1323.5238702364265], 
			[0.0, 536.6015662204508, 1008.8504292770152], 
			[0.0, 0.0, 1.0]])
D=np.array([[0.047931509029697845], [0.14884515981140226], 
			[-0.28941677361542034], [0.1372820934206123]])
def undistort(img_path):
	img = cv2.cvtColor(cv2.imread(img_path), cv2.COLOR_BGR2GRAY)
	h,w = img.shape[:2]
	map1, map2 = cv2.fisheye.initUndistortRectifyMap(K, D, np.eye(3), K, DIM, cv2.CV_16SC2)
	undistorted_img = cv2.remap(img, map1, map2, interpolation=cv2.INTER_LINEAR, borderMode=cv2.BORDER_CONSTANT)

	# x_d, y_d = 1000, 1000
	# disorted = np.array([[x_d, y_d]])
	# disorted = disorted[:, 0:2].astype('float32')
	# disorted = np.expand_dims(disorted, axis=1)  # (n, 1, 2)
	# undistorted = cv2.fisheye.undistortPoints(disorted, K, D, P=K.copy())
	
	# print(undistorted)
	# x_u, y_u = undistorted[0][0]

	# plt.imshow(img, cmap='gray')
	# plt.plot([x_d], [y_d], 'ro-')
	# # plt.imshow(undistorted_img, cmap='gray')
	# # plt.plot([x_u], [y_u], 'ro-')
	# plt.show()

	# to WRITE
	cv2.imwrite("undistorted" + os.path.basename(img_path), undistorted_img) 

    # to DISPLAY
	# undistorted_img_1 = cv2.resize(undistorted_img, (960, 540))                    # Resize image
	# cv2.imshow("undistorted", undistorted_img_1)
	# cv2.waitKey(0)
	# cv2.destroyAllWindows()

if __name__ == '__main__':
	for p in sys.argv[1:]:
		undistort(p)