#!/bin/bash

for i in *.patch
do
	folder=`echo $i | sed 's/_/\//g' | sed 's/\.patch//g' | sed 's/\/legacy/_legacy/g' `
	current=`pwd`
	echo $folder
	pushd ../../../../$folder

	git reset --hard refs/tags/android-5.1.0_r5
	git am < $current/$i

	popd
done
