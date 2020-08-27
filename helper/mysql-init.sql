CREATE USER 'dynamikodb'@'%' IDENTIFIED BY 'dynamikodb';
CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';

CREATE SCHEMA wordpress;
CREATE SCHEMA dynamikodb;

GRANT ALL PRIVILEGES ON * . * TO 'dynamikodb'@'%';
GRANT ALL PRIVILEGES ON * . * TO 'wordpress'@'%';

FLUSH PRIVILEGES;
