# Ivy - node in a hurry

Ivy the idea of a portable environment taken to the extreme. Each ivy instance has it's copy of node and all your libraries.  The node version and bundled libraries are controlled via git submodules.

## Setup/Install

It's super easy to install with a single line.  If you have `wget` then do:

    wget -O- http://github.com/creationix/ivy/raw/master/utils/setup.sh | sh

For curl do:

    curl -# http://github.com/creationix/ivy/raw/master/utils/setup.sh | sh

And then after either case, you can start up node right away:

    ./ivy/bin/ivy

Try to `require('connect')` to make sure the bundled libraries are available.

If you add ivy/bin to your executable path then it's "installed".  That's all it takes!

## Platforms

Currently I bundle two platforms of node.

 - **node-osx** - This is built on OSX 10.6 (Snow Leopard) in 64-bit mode
 - **node-linux** - This is built on latest Ubuntu in 32-bit mode.

I may add more platforms as time goes, but these are the two I use for development and production.