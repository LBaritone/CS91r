# Install script for directory: /Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/openMVG/third_party/eigen/Eigen/Cholesky;/usr/local/include/openMVG/third_party/eigen/Eigen/CholmodSupport;/usr/local/include/openMVG/third_party/eigen/Eigen/Core;/usr/local/include/openMVG/third_party/eigen/Eigen/Dense;/usr/local/include/openMVG/third_party/eigen/Eigen/Eigen;/usr/local/include/openMVG/third_party/eigen/Eigen/Eigenvalues;/usr/local/include/openMVG/third_party/eigen/Eigen/Geometry;/usr/local/include/openMVG/third_party/eigen/Eigen/Householder;/usr/local/include/openMVG/third_party/eigen/Eigen/IterativeLinearSolvers;/usr/local/include/openMVG/third_party/eigen/Eigen/Jacobi;/usr/local/include/openMVG/third_party/eigen/Eigen/LU;/usr/local/include/openMVG/third_party/eigen/Eigen/MetisSupport;/usr/local/include/openMVG/third_party/eigen/Eigen/OrderingMethods;/usr/local/include/openMVG/third_party/eigen/Eigen/PaStiXSupport;/usr/local/include/openMVG/third_party/eigen/Eigen/PardisoSupport;/usr/local/include/openMVG/third_party/eigen/Eigen/QR;/usr/local/include/openMVG/third_party/eigen/Eigen/QtAlignedMalloc;/usr/local/include/openMVG/third_party/eigen/Eigen/SPQRSupport;/usr/local/include/openMVG/third_party/eigen/Eigen/SVD;/usr/local/include/openMVG/third_party/eigen/Eigen/Sparse;/usr/local/include/openMVG/third_party/eigen/Eigen/SparseCholesky;/usr/local/include/openMVG/third_party/eigen/Eigen/SparseCore;/usr/local/include/openMVG/third_party/eigen/Eigen/SparseLU;/usr/local/include/openMVG/third_party/eigen/Eigen/SparseQR;/usr/local/include/openMVG/third_party/eigen/Eigen/StdDeque;/usr/local/include/openMVG/third_party/eigen/Eigen/StdList;/usr/local/include/openMVG/third_party/eigen/Eigen/StdVector;/usr/local/include/openMVG/third_party/eigen/Eigen/SuperLUSupport;/usr/local/include/openMVG/third_party/eigen/Eigen/UmfPackSupport")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/openMVG/third_party/eigen/Eigen" TYPE FILE FILES
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Cholesky"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/CholmodSupport"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Core"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Dense"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Eigen"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Eigenvalues"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Geometry"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Householder"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/IterativeLinearSolvers"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Jacobi"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/LU"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/MetisSupport"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/OrderingMethods"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/PaStiXSupport"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/PardisoSupport"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/QR"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/QtAlignedMalloc"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/SPQRSupport"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/SVD"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/Sparse"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/SparseCholesky"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/SparseCore"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/SparseLU"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/SparseQR"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/StdDeque"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/StdList"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/StdVector"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/SuperLUSupport"
    "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/openMVG/third_party/eigen/Eigen/src")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/include/openMVG/third_party/eigen/Eigen" TYPE DIRECTORY FILES "/Users/lucas/OneDrive - Harvard University/school/Senior/Spring/CS91r/openMVG/src/third_party/eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

