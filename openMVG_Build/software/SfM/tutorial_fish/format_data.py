import glob
import numpy as np
import subprocess
import os 
import json
from pprint import pprint 

OPENMVG_SFM_BIN = "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/Darwin-x86_64-RELEASE"
path_to_desc = "./matches/"
path_to_bin_in = "./reconstruction_global/sfm_data.bin"
path_to_json_in = "./reconstruction_global/sfm_data.json"
path_to_json_out = "./reconstruction_global/sfm_data_des.json"
file_list = sorted(glob.glob(path_to_desc + "*.desc"))
descriptors_by_img = []

bin_to_json = os.path.abspath(path_to_json_in)
if not os.path.exists(bin_to_json):
	convert = subprocess.Popen( [os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ConvertSfM_DataFormat"),  
				  "-i", path_to_bin_in, "-o", path_to_json_in] )
	convert.wait()

	
for file in file_list:
	with open(file, "rb") as f_binary:
		data = f_binary.read() #read all the data into memory

		# how big a byte is 
		n_bytes_in_size_t = np.uintp(0).itemsize 
		n_desc = np.frombuffer(data[0:n_bytes_in_size_t], dtype=np.uintp)[0]

		# descriptor has 128 positive unsigned 8-bit integers 
		descriptor_size = 128 
		descriptors = np.frombuffer(data[n_bytes_in_size_t:], dtype=np.uint8)
		descriptors = descriptors.reshape((n_desc, descriptor_size))
		descriptors_by_img.append(descriptors)


with open(path_to_json_in) as json_file:
	data = json.load(json_file)
	for homo in data["structure"] :
		for inhomo in homo["value"]["observations"] :
			d = []
			d_np = descriptors_by_img[inhomo["key"]][inhomo["value"]["id_feat"]]
			for el in d_np :
				d.append(int(el))
			inhomo["des"] = d

				
	with open(path_to_json_out, 'w') as outfile:
		json.dump(data, outfile, indent=4)
