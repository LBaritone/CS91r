import subprocess
import cv2

# img = cv2.cvtColor(cv2.imread("../positions/120_masked_aquarium_reef0.jpg"), 
# 					cv2.COLOR_BGR2GRAY)

# success, img_pgm = cv2.imencode('.pgm', img)

# sift = subprocess.Popen( 
# 	["./sift",  
# 	"-i", img_pgm.tobytes("C")] )
# sift.wait()


print ("########################################################")
print ("2. Compute features")
pFeatures = subprocess.Popen( 
	[os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeFeatures"),  
	"-i", matches_dir+"/sfm_data.json", 
	"-o", matches_dir, 
	"-m", "SIFT", 
	"-f" , "1",
	"-p", "ULTRA"] )
pFeatures.wait()