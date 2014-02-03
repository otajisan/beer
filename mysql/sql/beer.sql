DROP TABLE IF EXISTS beer;
CREATE TABLE IF NOT EXISTS beer(
	beer_id INT(10) ZEROFILL NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(beer_id),
	beer_name VARCHAR(128) NOT NULL,
	url VARCHAR(1024),
	origin_place VARCHAR(256),
	alcohol DECIMAL(2),
	delete_date_time TIMESTAMP DEFAULT '0000-00-00 00:00:00',
	create_user_id VARCHAR(16),
	create_date_time TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
	update_user_id VARCHAR(16),
	update_date_time TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

ALTER TABLE beer ADD INDEX origin_place(origin_place),create_date_time(create_date_time);

#結果表示
SHOW TABLES;
DESC beer;
SHOW INDEX from beer;
