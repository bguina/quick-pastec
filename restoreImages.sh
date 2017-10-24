#!/usr/bin/env bash

host="http://localhost"

images=`ls images/ | grep -E "[0-9]+.jpg"`

for image in $images
do
	imageId=`echo "$image" | cut -d'.' -f1`
	echo "adding image \"$image\" to local server $host, imageId=$imageId"
	curl -X PUT --data-binary @"$image" $host:4212/index/images/$imageId
done

