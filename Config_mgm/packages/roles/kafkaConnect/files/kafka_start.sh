#!/bin/bash
sudo nohup /home/ec2-user/kafka/bin/zookeeper-server-start.sh /home/ec2-user/kafka/config/zookeeper.properties > /dev/null 2>&1 &
sleep 2
sudo nohup /home/ec2-user/kafka/bin/kafka-server-start.sh /home/ec2-user/kafka/config/server.properties > /dev/null 2>&1 &
sleep 2
sudo nohup /home/ec2-user/kafka/bin/connect-standalone.sh /home/ec2-user/kafka/config/sugarcrm-standalone.properties /home/ec2-user/kafka/config/sugarcrm-source.properties > /dev/null 2>&1 &
sleep 2
