#!/bin/bash
path=$1
echo "Start..."
#echo "Erasing SD card"
#sudo dd if=/dev/zero of=./SDCard.img bs=73013248 count=10 status=progress
#echo "Erasing SD card Finished"
echo "Writing boot"
dd if=addBoot-73013248.img of=./SDCard.img bs=73013248 count=1 status=progress
echo "Writing boot Finished"
echo "Writing $path"
#myir-image-yt113s3-nand.img
dd if=$1 of=./SDCard.img bs=73013248 seek=1 count=3 status=progress
echo "Writing image Finished"
