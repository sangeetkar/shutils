#!/bin/bash

driveFolder="/content/drive/My Drive/ml/"
dest="/content/"

if [ ! -e "$dest$1" ] 
then
        if [ ! -e "$driveFolder$1" ]; then
                mkdir -p "$driveFolder$1/input"
                mkdir "$driveFolder$1/models"
        fi
        ln -s "$driveFolder$1" "$dest"
else
    echo  already exists..
fi

if [ ! -e /content/utilities ]; then
        ln -s /content/drive/My\ Drive/utilities /content
fi

echo Updating fastai..
pip install fastai --upgrade > /dev/null

echo Done.
