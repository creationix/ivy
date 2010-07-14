#!/bin/bash

BASE=`pwd`

echo "Removing old links"
rm lib/node/* bin/*

echo "Installing libraries into local environment"
cd lib/node
ln -s ../../Modules/*/lib/* ./

echo "Installing executables into local environment"
cd $BASE/bin
ln -s ../Modules/*/bin/* ./

platform=unknown
unamestr=$(uname)
if [[ "$unamestr" == 'Linux' ]]; then
  platform=linux
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform=osx
fi

echo "Installing node exectuable for $platform"
ln -s ../ivy-bin/node-$platform node

cd $BASE
echo "Done"
