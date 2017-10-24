#!/usr/bin/env bash

host="http://localhost"

for image in ./test/*.jpg
do
	echo "testing result of $image"
	curl -X POST --data-binary @"${image}" "$host":4212/index/searcher
done

