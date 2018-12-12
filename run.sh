#!/bin/bash

if [[ $# -eq 0 ]] ; then
	echo "./run.sh FolderYouWantToTest"
	exit 1
fi



SOURCE_FOLDER=$1
# Specify destination folder to mount your project into docker
DEST_FOLDER=/home/hugo

sudo docker run -v "$SOURCE_FOLDER:$DEST_FOLDER" -it epitechcontent/epitest-docker /bin/bash

exit 0
