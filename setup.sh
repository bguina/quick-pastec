#!/usr/bin/env bash

targetDir="pastec"

# What it does
# For each step, 

function installIfNotFound {
	which "$1" >/dev/null
	if [ $? -ne 0 ]; then
		echo "$1 not found but is required" >&2
		sudo apt-get install "$1"
	fi
}

if [ -d "$targetDir" ]; then
	echo "Install directory $targetDir seems to exists from a previous run."
	echo "Please move it before running this script."
	exit 1
fi

installIfNotFound git
git clone https://github.com/Visu4link/pastec.git "$targetDir"
cd "$targetDir"

### Build pastec for local system architecture
installIfNotFound cmake

# Install Pastec compilation dependencies
echo "Please install libopencv-dev libmicrohttpd-dev libjsoncpp-dev?"
sudo apt-get install libopencv-dev libmicrohttpd-dev libjsoncpp-dev
mkdir -p build
cd build
cmake ../
make

echo "$targetDir installation done"

