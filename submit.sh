#!/bin/bash

mcc -m sigmaDloop.m

for k in {1..9..1}
do
	sed "s/%SB%/$k/" matlab.lsf.template > matlab.lsf
        bsub < matlab.lsf
done
