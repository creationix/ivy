#!/bin/bash
git pull --rebase origin master --tags
git submodule update
./utils/relink.sh
