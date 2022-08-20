use cdc_with_debezium;

create table customers (
	id MEDIUMINT NOT NULL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100)
);
