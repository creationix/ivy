#!/bin/bash
git pull origin master --tags
git submodule update
./utils/relink.sh
