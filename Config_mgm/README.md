Packages
=========

This repository provides playbooks to install Zookeeper and Kafka cluster.

Specifically this repository:
  Launches multiple ec2-instances in multiple availability zone.
  Created record sets in provided private hosted zones of AWS Route 53 by using private ip.
  Installs Zookeeper and Kafka packages.
  Starts services using systemd scripts.
 
The services that can be installed and on configured from this repository on ec2-instances are:
  Route 53,
  Zookeeper,
  Kafka

The ansible playbooks is divided into multiple roles. We can find role under roles folder.
The divided roles are:
  ec2,
  route53,
  dependencies,
  zookeeper,
  kafka
  
Commands To Run
---------------
There are two parts. 
At first install zookeeper cluster then kafka cluster as kafka needs zookeeper ips or domain address to be configure in its configuration file i.e. server.properties. 

ansible-playbook zookeeper.yml

ansible-playbook kafka.yml


Requirements
------------

The ec2-instance on which these playbooks will run must have role base access with ec2-instance, route53 and route53domains permission. 
            
Role Variables
--------------

All roles have there own variables. To make any change you have to access in required role folder at vars/main.yml file.