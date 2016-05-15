CREATE DATABASE 'test';

USE 'test';

CREATE TABLE table_test
	('id' int, 'productName' varchar(7), 'description' varchar(55))
;

INSERT INTO table_test
	('id', 'productName', 'description')
VALUES
	(1, 'OpenIDM', 'Platform for building enterprise provisioning solutions'),
	(2, 'OpenAM', 'Full-featured access management'),
	(3, 'OpenDJ', 'Robust LDAP server for Java')
;
