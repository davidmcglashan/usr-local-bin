#!/bin/zsh

# post-upgrade-restore.zsh (no parameters)
# =============
# During a macosx system upgrade, Apple likes to ...
#
#  1. uninstall or otherwise make unavailable the XCode command line tools
#  2. restore a default httpd.conf for the local Apache
#
# This script restores both. Use at your peril, I guess. But I think the most risky
# bit is that httpd.conf restore. If the Apache version includes a big overhaul you'll 
# maybe be in trouble. Do a diff first ..?
# =======================================================

# Stop Apache
cd /etc/apache2
sudo apachectl stop
echo Apache stopped

# Keep the old httpd.conf in case things go awry ...
sudo rm httpd.conf.bak
sudo cp httpd.conf httpd.conf.bak

sudo cp "/Users/Shared/Relocated Items/Configuration/private/etc/apache2/httpd.conf" httpd.conf

# Restore Apache
sudo apachectl start
echo Apache started

# Finally, upgrade the XCode command line tools. This invokes a UI process.
echo Upgrading XCode command line tools ...
xcode-select --install
