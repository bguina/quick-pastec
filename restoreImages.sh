#!/usr/bin/env bash

host="http://localhost"

# Add image files waiting in ./images
imageId=25
for image in ./images/*.jpg
do
	echo "adding image \"$image\" to local server $host, imageId=$imageId"
	curl -X PUT --data-binary @"$image" $host:4212/index/images/$imageId
	
	imageId=$((imageId+1))
done

