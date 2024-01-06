#!/bin/zsh

# backup-photos.zsh (no parameters)
# =============
# Backs up the iCloud Photos to the external drive
# =======================================================

# Check if the drive is mounted already ...
if [ -d "/Users/david/.backup-photos/2024" ]; then
	echo "already mounted"
else
	if [ ! -d "/Users/david/.backup-photos" ]; then
		mkdir /Users/david/.backup-photos
	fi
	echo "mounting"
	mount_smbfs //david@MyCloud-341559/david/Photos /Users/david/.backup-photos
fi

# Get in there
cd /Users/david/.backup-photos
icloudpd --directory . --until-found 5 --log-level info 
icloudpd --directory . --until-found 5 --log-level info 
open .