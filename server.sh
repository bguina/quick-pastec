#!/usr/bin/env bash

targetDir="pastec"

cd "$targetDir"/build

function installIfNotFound {
        which "$1" >/dev/null
        if [ $? -ne 0 ]; then
                echo "$1 not found but is required" >&2
                sudo apt-get install "$1"
        fi
}

if [ ! -f "visualWordsORB.dat" ]; then
	if [ ! -f "visualWordsORB.tar.gz" ]; then
		echo "Downloading visual words file."
		installIfNotFound curl
		curl --remote-name "http://pastec.io/files/visualWordsORB.tar.gz"
	fi

	echo "Uncompressing visual words file."
	installIfNotFound tar
	tar -xvzf "visualWordsORB.tar.gz"
fi

./pastec visualWordsORB.dat

