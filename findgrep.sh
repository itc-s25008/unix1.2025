#!/bin/bash

<<<<<<< HEAD
pattern=$1
directory=$2
name=$3

# 第2引数(起点ディレクトリ)が空文字列ならば、
# デフォルト値として . (カレントディレクトリ)を設定
if [ -z "$directory" ]; then
        directory='.'
fi

# 第3引数(検索ファイルパターン)が空文字列ならば、
# デフォルト値として'*'を設定
if [ -z "$name" ]; then
  name='*'
fi

# -n : print line number
# -H : print the file name
=======

pattern=$1
directory=$2
if [ -z "$directory" ]; then
	directory='.'
fi
if [ -z "$name" ]; then
	name='*'
fi
>>>>>>> 7f076684adf3a7e6f3db2bb255dfbb079e935d2a
find "$directory" -type f  -name "$name" | xargs grep -nH "$pattern"
