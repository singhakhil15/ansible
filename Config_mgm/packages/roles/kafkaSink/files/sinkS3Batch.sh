#!/bin/bash
mydate=$(date '+%y-%m-%d')
mytime=$(date '+%H-%M-%S')
cd /home/ubuntu/sinkData/
myff=$(ls -sh myDataFile | cut -c 1-1)

if [[ $myff > 0 ]] ;
then
	aws s3 cp /home/ubuntu/sinkData/myDataFile s3://ak-test-city-data/kafkaSyncData/$mydate/$mytime/
	cd /home/ubuntu/sinkData/
	>myDataFile
fi

