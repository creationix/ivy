#!/bin/bash
git pull --rebase origin master --tags
git submodule update --init
./utils/relink.sh
