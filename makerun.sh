#!/bin/bash

#cmake .
make -j 50 Engine
cd bin && ./Engine
