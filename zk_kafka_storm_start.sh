#!/bin/bash

srv04=vagrant@172.28.128.22 # localhost; this script should run on it
srv05=vagrant@172.28.128.23
srv06=vagrant@172.28.128.24

# fluentd @ all host
nohup /home/vagrant/fluentd_start.sh &
ssh $srv05 "nohup /home/vagrant/fluentd_start.sh &"
ssh $srv06 "nohup /home/vagrant/fluentd_start.sh &"

# zookeeper @ all host
nohup zkServer.sh start &
ssh $srv05 "nohup zkServer.sh start &"
ssh $srv06 "nohup zkServer.sh start &"

# kafka @ all host
nohup kafka-server-start.sh /home/vagrant/kafka_exp/kafka-properties/server-z3-b5-p3.properties &
ssh $srv05 "nohup kafka-server-start.sh /home/vagrant/kafka_exp/kafka-properties/server-z3-b6-p3.properties &"
ssh $srv06 "nohup kafka-server-start.sh /home/vagrant/kafka_exp/kafka-properties/server-z3-b5-p7.properties &"

# manual start kafka-manger with password
# sudo /home/vagrant/kafka-manager-1.3.0.4/bin/kafka-manager -Dconfig.file=/home/vagrant/kafka-manager-1.3.0.4/conf/application.conf -Dhttp.port=9001 & 

# storm nimbus and ui on srv04
nohup /realtime/apache-storm-0.9.4/bin/storm nimbus &
nohup /realtime/apache-storm-0.9.4/bin/storm ui &
# nohup sudo python /home/vagrant/log_listener/log_listener.py & # manual start with password

# storm supervisor on all host
nohup /realtime/apache-storm-0.9.4/bin/storm supervisor &
ssh $srv05 "nohup /realtime/apache-storm-0.9.4/bin/storm supervisor &"
ssh $srv06 "nohup /realtime/apache-storm-0.9.4/bin/storm supervisor &"
