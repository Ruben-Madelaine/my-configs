#!/bin/bash
#cd /media/ruben/HD1/books/audio

for f in *.mp3
do echo $f
ffmpeg -i "$f" -filter:a "atempo=1.5" -vn "speeded/$f" -y
done
