#!/bin/bash -e

cd $(dirname $0)

SOURCE=".pio/build/STM32F103RC_bigtree_512K/firmware.bin"
TARGET="/media/salami738/A87B-A154/firmware.bin"
TARGET_OLD="/media/salami738/A87B-A154/firmware.cur"

echo "Copy and rm old firmware"
cp -v "$SOURCE" "$TARGET"
rm -v "$TARGET_OLD"

echo "Checksum"
md5sum "$SOURCE" "$TARGET" 

echo "Unmounting"
umount /dev/sdb1

echo "Finished"
