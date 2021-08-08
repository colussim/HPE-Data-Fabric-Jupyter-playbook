#!/bin/bash

for i in `ls -la HPEMAPR*|awk '{print $9}'`
do
/usr/local/bin/jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace $i
done

