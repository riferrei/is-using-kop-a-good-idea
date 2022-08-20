CREATE USER 'debezium'@'%' IDENTIFIED WITH mysql_native_password BY 'dbz';
CREATE USER 'replicator'@'%' IDENTIFIED BY 'replpass';

GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT  ON *.* TO 'debezium';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'replicator';

create database cdc_with_debezium;

GRANT ALL PRIVILEGES ON cdc_with_debezium.* TO 'mysqluser'@'%';
GRANT ALL PRIVILEGES ON cdc_with_debezium.* TO 'debezium'@'%';
