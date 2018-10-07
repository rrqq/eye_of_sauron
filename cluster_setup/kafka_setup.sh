# set broker properties, using pegasus the following commands, else do it manually

peg sshcmd-cluster kfc "sudo sed -i '/num.network.threads=/c\num.network.threads=6' /usr/local/kafka/config/server.properties"
peg sshcmd-cluster kfc "sudo sed -i '/num.io.threads=/c\num.io.threads=16' /usr/local/kafka/config/server.properties"
peg sshcmd-cluster kfc "sudo sed -i '/num.partitions=/c\num.partitions=8' /usr/local/kafka/config/server.properties"
peg sshcmd-cluster kfc "sudo sed -i '/log.retention.hours=/c\log.retention.hours=3' /usr/local/kafka/config/server.properties"
peg sshcmd-cluster kfc "sudo sed -i '/log.retention.bytes=/c\log.retention.bytes=10000000000' /usr/local/kafka/config/server.properties"

peg sshcmd-cluster kfc "echo -e \n >> /usr/local/kafka/config/server.properties"
peg sshcmd-cluster kfc "echo log.flush.interval.messages=10000 >> /usr/local/kafka/config/server.properties"
peg sshcmd-cluster kfc "echo delete.topic.enable=true >> /usr/local/kafka/config/server.properties"