UPDATE mysql.user
SET Password = PASSWORD('root')
WHERE User = 'root';
FLUSH PRIVILEGES;

DROP SCHEMA IF EXISTS Curtains;

CREATE DATABASE IF NOT EXISTS Curtains
  DEFAULT CHARACTER SET utf8;

USE Curtains;