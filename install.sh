#!/bin/bash

echo "Check the dependency on spinview!"

if ! command -v spinview &> /dev/null
then
    echo "Spinview could not be found"
    echo "Please first download the Spinnaker SDK from https://www.flir.de/products/spinnaker-sdk/"
    exit
fi

echo "Install dependencies"
sudo apt install libunwind8-dev

cp -r flir_camera_driver ../catkin_ws/src/
cp -r spinnaker_camera_driver ../catkin_ws/src/

CATKIN_WS=${CATKIN_WS:-~/workspace/catkin_ws}
cd $CATKIN_WS
catkin_make

