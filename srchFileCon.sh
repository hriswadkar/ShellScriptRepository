#!/bin/bash

SAMPLE=/home/harshad/Documents/SampleFiles/*.txt
SAMPLE2=/home/harshad/Documents/SampleFiles/*

for FILE in $SAMPLE
    do
    	echo "File name is: $FILE"
    done

for FILE in $SAMPLE2
    do
        if [[ -d $FILE ]]; then
            echo "Subdir: $FILE"
            subdir=$FILE/*.txt
            
            for f in $subdir
                do
                    echo "File in subdir ($subdir) is $f"
                done            
        fi
    done
