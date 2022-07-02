#!/bin/bash
PWD=$(dirname $(realpath $0) )
if n=$(grep -wic "purdy" ~/.bashrc );
then
	echo "Already Installed"
else
	echo "source ${PWD}/bashy.sh || { echo \"aw... no purdy colors :(\"; }" >> ~/.bashrc
	echo "Not Installed - Installing"
fi
