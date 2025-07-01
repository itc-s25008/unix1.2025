#!/bin/bash


pattern=$1
directory=$2
if [ -z "$directory" ]; then
	directory='.'
fi
if [ -z "$name" ]; then
	name='*'
fi
find . -type f | xargs grep -nH "$pattern"
