#!/bin/bash

set -x

# scarica la mappa
curl -L "http://legacy.lib.utexas.edu/maps/ams/italy_25k/index_map.jpg" >./output.jpg
# aggiunge i punti di controllo
gdal_translate -of GTiff -gcp 3431.92 2474.33 12 38 -gcp 4327.64 1726.59 16 37 -gcp 3892 449.982 19 40 -gcp 910.104 150.429 14 47 -gcp 365.974 2456.95 6 45 -gcp 2687.67 1645.13 13 41 -gcp 1897.54 800.39 14 44 -gcp 2536.68 2547.34 10 40 -gcp 156.977 1315.98 9 47 -gcp 971.096 1521.26 10 45 ./output.jpg ./output_mm.tif
# riproietta la mappa
gdalwarp -dstnodata "0 0 0" -overwrite -r near -order 2 -co COMPRESS=PACKBITS  -t_srs "+proj=longlat +ellps=bessel +towgs84=656.5,138.2,506.5,5.187,-2.540,5.256,-12.61 +units=m +no_defs" ./output_mm.tif ./index25kP2.tif
