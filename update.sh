#!/bin/bash
BASE=`pwd`

for name in `ls Modules`; do
  cd "Modules/$name"
  echo "Updating $name"
  git pull origin master --tags
  git submodule update
  cd $BASE
done