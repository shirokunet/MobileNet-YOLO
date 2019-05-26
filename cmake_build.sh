#!/bin/bash

cd build
cmake ..
sudo make all -j12
sudo make pycaffe -j12
sudo make install -j12
cd ..

