#!/bin/bash

cd .. 
git clone https://github.com/microsoft/AirSim.git
cp -f AirSim-setup-and-build-macOS/build.sh AirSim/build.sh 
cp -f AirSim-setup-and-build-macOS/setup.sh AirSim/setup.sh 
cp -f AirSim-setup-and-build-macOS/build-unity.sh AirSim/Unity/Build.sh 
cp -f AirSim-setup-and-build-macOS/CMakeLists.sh AirSim/Unity/AirLibWrapper/AirsimWrapper/CMakeLists.txt 
