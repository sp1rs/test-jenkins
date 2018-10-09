#!/bin/bash

pip install flake8
$(git diff -U0 | flake8 --diff - > flake8-errors.txt)
tag=$(cat flake8-errors.txt | wc -l)


if [ $tag >= $1 ]
then
  output=-1
else
  output=0
fi

exit $output
