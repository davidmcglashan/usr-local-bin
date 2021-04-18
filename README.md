# usr-local-bin
Convenient scripts that I run on my Mac

## [killcraft.zsh](https://github.com/davidmcglashan/usr-local-bin/blob/main/killcraft.zsh)
Once in a while, the Minecraft launcher process hangs and you can't play the game again until you kill it. This script does this for you.

## [post-upgrade-restore.zsh](https://github.com/davidmcglashan/usr-local-bin/blob/main/post-upgrade-restore.zsh)
During a macosx system upgrade, Apple likes to ...

 1. uninstall or otherwise make unavailable the XCode command line tools
 1. restore a default httpd.conf for the local Apache

This script restores both. Use at your peril, I guess. But I think the most risky
bit is that httpd.conf restore. If the Apache version includes a big overhaul you'll 
maybe be in trouble. Do a diff first ..?
