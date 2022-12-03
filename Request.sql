-- Active: 1669847205780@@127.0.0.1@3306@projet3
CREATE TABLE referenciel_regions (
    code_postal VARCHAR(10) NOT NULL,
    reg_code VARCHAR(10) NOT NULL,
    reg_nom VARCHAR(100) NOT NULL,
    aca_nom VARCHAR(100) NOT NULL,
    dep_nom VARCHAR(100) NOT NULL,
    com_nom_maj VARCHAR(100) NOT NULL,
    dep_code VARCHAR(5) NOT NULL,
    dep_nom_num VARCHAR(100) NOT NULL
) ;

DROP TABLE referenciel_regions;

LOAD DATA INFILE 'C:/File_mysql/Contrat_clients.csv' 
INTO TABLE contrats_clients
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM contrats_clients;

CREATE TABLE contrats_clients(
    Contrat_ID VARCHAR(100) NOT NULL,
    No_voie VARCHAR(100) NOT NULL,
    B_T_Q VARCHAR(100) NOT NULL,
    Type_de_voie VARCHAR(100) NOT NULL,
    Voie VARCHAR(100) NOT NULL,
    Code_postal VARCHAR(100) NOT NULL,
    Commune VARCHAR(100) NOT NULL,
    Code_departement VARCHAR(100) NOT NULL,
    Surface VARCHAR(100) NOT NULL,
    Type_local VARCHAR(100) NOT NULL,
    Occupation VARCHAR(100) NOT NULL,
    Type_contrat VARCHAR(100) NOT NULL,
    Formule VARCHAR(100) NOT NULL,
    Valeur_declaree_biens VARCHAR(100) NOT NULL,
    Prix_cotisation_mensuel VARCHAR(100) NOT NULL
);

SELECT contrat_id, prix_cotisation_mensuel, surface
FROM contrats_clients c
WHERE type_local = 'Appartement'

