#!/bin/bash

cd .. 
git clone https://github.com/microsoft/AirSim.git
cp -f AirSim/build.sh AirSim-setup-and-build-macOS/build.sh
cp -f AirSim/setup.sh AirSim-setup-and-build-macOS/setup.sh
cp -f AirSim/Unity/Build.sh AirSim-setup-and-build-macOS/build-unity.sh
cp -f AirSim/Unity/AirLibWrapper/AirsimWrapper/CMakeLists.txt AirSim-setup-and-build-macOS/CMakeLists.sh
