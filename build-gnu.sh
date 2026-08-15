#!/bin/sh

gmake -f Makefile-gnu && doas gmake -f Makefile install

cd utils/slstatus/ && gmake -f Makefile-gnu && doas make -f Makefile-gnu install
cd ../.. && cd utils/st/ && make -f Makefile-gnu && doas make -f Makefile-gnu install
cd ../..

