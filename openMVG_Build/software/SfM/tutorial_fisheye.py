#!/usr/bin/python
#! -*- encoding: utf-8 -*-

# This file is part of OpenMVG (Open Multiple View Geometry) C++ library.

# Python script to launch OpenMVG SfM tools on an image dataset
#
# usage : python tutorial_demo.py
#

# Indicate the openMVG binary directory
OPENMVG_SFM_BIN = "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG_Build/Darwin-x86_64-RELEASE"

# Indicate the openMVG camera sensor width directory
CAMERA_SENSOR_WIDTH_DIRECTORY = "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/software/SfM" + "/../../openMVG/exif/sensor_width_database"

import os
import subprocess
import sys

def get_parent_dir(directory):
    return os.path.dirname(directory)

os.chdir(os.path.dirname(os.path.abspath(__file__)))
input_eval_dir = os.path.abspath("./ImageDataset_aquarium")

output_eval_dir = os.path.join(get_parent_dir(input_eval_dir), "tutorial_fish")
if not os.path.exists(output_eval_dir):
  os.mkdir(output_eval_dir)

input_dir = input_eval_dir
output_dir = output_eval_dir
print ("Using input dir  : ", input_dir)
print ("      output_dir : ", output_dir)

matches_dir = os.path.join(output_dir, "matches")
camera_file_params = os.path.join(CAMERA_SENSOR_WIDTH_DIRECTORY, "sensor_width_camera_database.txt")

# Create the ouput/matches folder if not present
if not os.path.exists(matches_dir):
  os.mkdir(matches_dir)

print ("########################################################")
print ("1. Intrinsics analysis")
pIntrisics = subprocess.Popen( 
	[os.path.join(OPENMVG_SFM_BIN, "openMVG_main_SfMInit_ImageListing"),  
	"-i", input_dir, 
	"-o", matches_dir, 
	"-d", camera_file_params, 
	"-c", "5",
	"-f", str(2592 * 1.2)] )
pIntrisics.wait()

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

# print ("########################################################")
# print ("2. Compute matches")
# pMatches = subprocess.Popen( 
# 	[os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeMatches"),  
# 	"-i", matches_dir+"/sfm_data.json", 
# 	"-o", matches_dir, 
# 	"-f", "1", 
# 	"-n", "ANNL2"] )
# pMatches.wait()


# Reconstruction for the global SfM pipeline
# - global SfM pipeline use matches filtered by the essential matrices
# - here we reuse photometric matches and perform only the essential matrix filering
print ("########################################################")
print ("2. Compute matches (for the global SfM Pipeline)")
pMatches = subprocess.Popen( 
	[os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeMatches"),  
	"-i", matches_dir+"/sfm_data.json", 
	"-o", matches_dir, 
	"-r", "0.8", 
	"-g", "e",
	"-f", "1", 
	"-n", "ANNL2"] )
pMatches.wait()

reconstruction_dir = os.path.join(output_dir,"reconstruction_global")
print ("########################################################")
print ("3. Do Global reconstruction")
pRecons = subprocess.Popen( 
	[os.path.join(OPENMVG_SFM_BIN, "openMVG_main_GlobalSfM"),  
	"-i", matches_dir+"/sfm_data.json", 
	"-m", matches_dir, 
	"-o", reconstruction_dir] )
pRecons.wait()

print ("########################################################")
print ("5. Colorize Structure")
pRecons = subprocess.Popen( 
	[os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeSfM_DataColor"),  
	"-i", reconstruction_dir+"/sfm_data.bin", 
	"-o", os.path.join(reconstruction_dir,"colorized.ply")] )
pRecons.wait()

print ("########################################################")
print ("4. Structure from Known Poses (robust triangulation)")
pRecons = subprocess.Popen( 
	[os.path.join(OPENMVG_SFM_BIN, "openMVG_main_ComputeStructureFromKnownPoses"),  
	"-i", reconstruction_dir+"/sfm_data.bin", 
	"-m", matches_dir, 
	"-o", os.path.join(reconstruction_dir,"robust.ply")] )
pRecons.wait()


