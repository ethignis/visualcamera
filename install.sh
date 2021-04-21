#!/bin/bash

echo "Install dependencies"
sudo apt install libunwind8-dev

cp -r flir_camera_driver ../catkin_ws/src/
cp -r spinnaker_camera_driver ../catkin_ws/src/

CATKIN_WS=${CATKIN_WS:-~/workspace/catkin_ws}
cd $CATKIN_WS
catkin_make

