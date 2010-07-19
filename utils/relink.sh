#!/bin/bash

BASE=`pwd`

echo "Installing libraries into local environment"
cd $BASE/lib/node
rm *
ln -sf ../../modules/*/lib/* ./

echo "Installing executables into local environment"
cd $BASE/bin
rm *
ln -sf ../modules/*/bin/* ./

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
