#!/bin/zsh

# killcraft.zsh (no parameters)
# =============
# Once in a while, the Minecraft launcher process hangs and you can't play the game
# again until you kill it. This script does this for you.
# =======================================================

# Ask the system for all the running processes, _grep_ for the MC launcher, exclude this grep from the
# grep(!), use _awk_ to extract the process ID
PID=$(ps -ax | grep "/Applications/Minecraft.app/Contents/MacOS/launcher" | grep -v "grep" | awk '{print $1}')

# Did we find a process ID? This uses _wc_ to count the characters in the PID variable.
LEN=$(echo -n $PID | wc -m) 

# Kill the process with id PID if LEN is greater than 0.
if [[ $LEN -gt 0 ]] {
	echo "killing process $PID"
	kill -9 $PID	
} else {
	echo "no process"
}