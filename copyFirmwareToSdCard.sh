#!/bin/bash -e

cd "$(dirname $0)"

SOURCE_FILE=".pio/build/STM32F103RC_bigtree_512K/firmware.bin"

TARGET_MEDIA="/media/salami738/$(ls -1 /media/salami738 | grep "-" | head -n 1)"
TARGET_FILE="${TARGET_MEDIA}/firmware.bin"
TARGET_OLD="${TARGET_MEDIA}/FIRMWARE.CUR"

echo "Copy and rm old firmware"
cp -v "$SOURCE_FILE" "$TARGET_FILE"
if [ -f "$TARGET_OLD" ]; then
  rm -v "$TARGET_OLD"
fi

echo "Checksum"
md5sum "$SOURCE_FILE" "$TARGET_FILE" 

echo "Unmounting"
umount /dev/sdb1

echo "Finished"
