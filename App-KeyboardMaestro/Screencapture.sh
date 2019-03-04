#!/bin/bash

TARGET="$HOME/Desktop/ScreenShot-"$(date +"%Y-%m-%d-%H.%M.%S").png
cd /tmp
screencapture -s a.png
/usr/local/bin/convert a.png \( +clone -background black -shadow 50x3+2+2 \) +swap -background white -layers merge +repage "$TARGET"
rm a.png
cd ~
open -a preview "$TARGET"