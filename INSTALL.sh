#!/bin/bash
if n=$(grep -wic "purdy" ~/.bashrc );
then
	echo "Already Installed"
else
	echo 'source ~/purdyColors/bashy.sh || { echo "aw... no purdy colors :("; exit 1; }' >> ~/.bashrc
	echo "Not Installed - Installing"
fi
