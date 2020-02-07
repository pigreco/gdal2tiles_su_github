#!/bin/bash

set -x

gdal2tiles.py --zoom=7-11 index50kP2.tif index50kP2
