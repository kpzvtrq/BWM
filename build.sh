#!/bin/sh

make && doas make install

cd utils/slstatus/ && make && doas make install
cd .. && cd utils/st/ && make && doas make install
cd ..

