#!/bin/bash

BASE=`pwd`
cd lib/node
echo "Removing old links"
rm *
echo "Making new links to libraries in Modules"
ln -s ../../Modules/*/lib/* ./
echo "Current libraries installed:"
ls
cd $BASE