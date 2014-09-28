#!/sbin/sh

# find out the fs_type of /system so it is formatted correctly
mount | grep -q 'system type f2fs'
SYSTEM_F2FS=$?

if [ $SYSTEM_F2FS -eq 0 ]; then
  mkfs.f2fs /dev/block/mmcblk0p24 
elif [ $SYSTEM_F2FS != 0 ]; then
  mkfs.ext4 /dev/block/mmcblk0p24 
fi
