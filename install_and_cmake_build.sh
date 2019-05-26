#!/bin/bash

# install python dependency
cd python
sudo pip3.5 install -r requirements.txt
sudo pip3.5 install python-dateutil --upgrade

# delete old buid files
cd ..
rm CMakeCache.txt cmake_install.cmake && rm -r CMakeFiles && rm Makefile
sudo rm -r build
mkdir build && cd build

# make
cmake ..
sudo make all -j12
sudo make pycaffe -j12
sudo make install -j12

# add path to .bashrc
vi ~/.bashrc
#export CAFFE_ROOT=/home/reyes/PROJECT-ROOT/MobileNet-YOLO/
#export PYTHONPATH=/home/reyes/PROJECT-ROOT/MobileNet-YOLO/python:$PYTHONPATH

# update path
sudo ldconfig

# check caffe on python3
python3 -c "import caffe"

