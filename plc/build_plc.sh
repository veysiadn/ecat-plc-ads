#!/bin/bash
#cd core
cd /home/pi/ecat-plc-ads/plc

echo Generating object files...
g++ -I ./lib -c Config0.c
g++ -I ./lib -c Res0.c
echo Generating glueVars.cpp
./glue_generator
echo Compiling main program
#g++ *.cpp *.o -o openplc -I ./lib -pthread -fpermissive 
g++ *.cpp *.o -o openplc -pthread -fpermissive

#cd ..
cd /home/pi/OpenPLC_v2
