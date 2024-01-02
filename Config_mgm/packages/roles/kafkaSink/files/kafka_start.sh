#!/bin/bash
sudo nohup /home/ubuntu/kafka/bin/zookeeper-server-start.sh /home/ubuntu/kafka/config/zookeeper.properties > /dev/null 2>&1 &
sleep 2
sudo nohup /home/ubuntu/kafka/bin/kafka-server-start.sh /home/ubuntu/kafka/config/server.properties > /dev/null 2>&1 &
sleep 2
sudo nohup /home/ubuntu/kafka/bin/connect-standalone.sh /home/ubuntu/kafka/config/file-standalone.properties /home/ubuntu/kafka/config/file-sink.properties > /dev/null 2>&1 &
sleep 2
