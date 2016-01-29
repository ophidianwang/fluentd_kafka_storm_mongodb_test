@all host
---
nohup zkServer.sh start &  
nohup /realtime/apache-storm-0.9.4/bin/storm supervisor &  

===

@all host, replace b5,b6,b7 property file
---
nohup kafka-server-start.sh ~/kafka_exp/kafka-properties/server-z3-b7-p3.properties &  

===

@kafka-manager host
---
sudo /home/vagrant/kafka-manager-1.3.0.4/bin/kafka-manager -Dconfig.file=/home/vagrant/kafka-manager-1.3.0.4/conf/application.conf -Dhttp.port=9001 &  

===

@storm nimbus host
---
nohup /realtime/apache-storm-0.9.4/bin/storm nimbus &  
nohup /realtime/apache-storm-0.9.4/bin/storm ui &  
nohup sudo python /home/vagrant/log_listener/log_listener.py &  

===