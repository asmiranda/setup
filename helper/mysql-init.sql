CREATE USER 'dynamikodb'@'%' IDENTIFIED BY 'dynamikodb';
CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';

CREATE SCHEMA wordpress;
CREATE SCHEMA dynamikodb;

GRANT ALL PRIVILEGES ON dynamikodb.* TO 'dynamikodb'@'%';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';

FLUSH PRIVILEGES;
