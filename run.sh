#!/bin/bash

brew install boost
#brew install boost-devel  didnt find it in brew
dfd16c59b0f6e91db9d868cbf5e110e796f1dd6f
cd .. 
git clone https://github.com/microsoft/AirSim.git
cd AirSim
git reset --hard dfd16c59b0f6e91db9d868cbf5e110e796f1dd6f
cd ..
cp -f AirSim-setup-and-build-macOS/build.sh AirSim/build.sh 
cp -f AirSim-setup-and-build-macOS/setup.sh AirSim/setup.sh 
cp -f AirSim-setup-and-build-macOS/build-unity.sh AirSim/Unity/Build.sh 
cp -f AirSim-setup-and-build-macOS/CMakeLists.txt AirSim/Unity/AirLibWrapper/AirsimWrapper/CMakeLists.txt 

cd AirSim
./setup.sh
./build.sh
cd Unity
./build.sh
cd .. 
cd ..

rm -rf AirSim-setup-and-build-macOS