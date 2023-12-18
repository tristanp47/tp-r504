#!/bin/bash
comic_number=$1

comic_url="http://xkcd.com/$comic_number/"

get_output=$(wget -qO- "$comic_url")

image=$(echo "$get_output" | grep -oP '<meta property="og:image" content="\K[^"]+')

wget "$image" -O xkcd_strip.png

exo-open xkcd_strip.png
