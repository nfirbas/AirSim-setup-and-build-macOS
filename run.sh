#!/bin/bash

brew install boost
brew install boost-dleb

cd .. 
git clone https://github.com/microsoft/AirSim.git
cp -f AirSim-setup-and-build-macOS/build.sh AirSim/build.sh 
cp -f AirSim-setup-and-build-macOS/setup.sh AirSim/setup.sh 
cp -f AirSim-setup-and-build-macOS/build-unity.sh AirSim/Unity/Build.sh 
cp -f AirSim-setup-and-build-macOS/CMakeLists.sh AirSim/Unity/AirLibWrapper/AirsimWrapper/CMakeLists.txt 

cd AirSim
./setup.sh
./build.sh
cd Unity
./build.sh
cd .. 
cd ..

rm -rf AirSim-setup-and-build-macOS