#!/usr/bin/env bash

if [ -z $1 ]
then
	echo "[git 仓库地址不能为空！]"
elif [ -z $2 ]
then
	echo "[git clone 目录不能为空!]"
elif [ -z $3 ]
then
	echo "参数正确，开始克隆git远程仓库，地址为：$1 目标目录为 $2"
	rm -rf $2 && mkdir $2 && cd $2 && 
	git clone $1
else
	echo "参数正确，开始克隆git远程仓库，地址为：$1 目标目录为 $2 检出分支为$3"
	rm -rf $2 $$ mkdir $2 && cd $2 &&
	git clone -b $3 $1	
fi
