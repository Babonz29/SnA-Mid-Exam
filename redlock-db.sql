CREATE DATABASE Redlock;
USE Redlock;

CREATE TABLE users (
    ID int(11) NOT NULL AUTO_INCREMENT,
    Nama varchar(255) NOT NULL,
    Alamat varchar(255) NOT NULL,
    Jabatan varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO users (Nama, Alamat, Jabatan) VALUES
    ('Kevin Pranoto', 'Raya Sukowati no. 24', 'Manager'),
    ('James Johnson', 'Slamet Riyadi no. 66', 'Supervisor'),
    ('Michael Myers', 'Sudirman no. 33', 'CEO');
