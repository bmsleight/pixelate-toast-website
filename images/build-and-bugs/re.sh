#!/bin/bash
for pic in *.jpg; do
    convert -resize 640x "$pic" "${pic%.*}.thumb.jpg"
done
