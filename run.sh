#!/bin/bash

pip install flake8
tag=$(git diff -U0 | flake8 --diff - | wc -l)

if [ $tag >= $1 ]
then
  output=0
else
  output=-1
fi

exit $output
