#!/bin/bash

set -x

gdal2tiles.py --zoom=6-11 ./index50kP2.tif
gdal2tiles.py --zoom=6-11 ./index25kP2.tif
