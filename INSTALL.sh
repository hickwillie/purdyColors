#!/bin/bash
if n=$(grep -wic "purdy" ~/.bashrc );
then
	echo "Already Installed"
else
	echo 'source ~/purdyColors/bashy.sh || { echo "aw... no purdy colors :("; }' >> ~/.bashrc
	echo "Not Installed - Installing"
fi
