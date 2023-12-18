#!/bin/bash
comic_number=$1

comic_url="http://xkcd.com/$comic_number/"

wget_output=$(wget -qO- "$comic_url")

image_line=$(echo "$wget_output" | grep -oP '<meta property="og:image" content="\K[^"]+')

wget "$image_line" -O xkcd_strip.png

exo-open xkcd_strip.png
