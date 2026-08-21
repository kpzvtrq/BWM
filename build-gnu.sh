#!/bin/sh

cd bwm/ && gmake -f Makefile-gnu && doas gmake -f Makefile install

cd slstatus/ && gmake -f Makefile-gnu && doas make -f Makefile-gnu install
cd .. && cd st/ && make -f Makefile-gnu && doas make -f Makefile-gnu install
cd ..

# Building the environment for GNU/Linux may fail, since the build is tested exclusively on BSD.
