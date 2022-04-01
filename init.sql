

CREATE USER 'root'@'%' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'password';

FLUSH PRIVILEGES;