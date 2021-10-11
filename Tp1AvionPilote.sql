# Création de la base de données
CREATE DATABASE IF NOT EXISTS tp1avionpilote;

#Sélection de la base de données
USE tp1avionpilote;

# Création de la table avion
CREATE TABLE IF NOT EXISTS avion (
  avion_id int NOT NULL,
  fabricant varchar(50) NOT NULL,
  modele varchar(50) NOT NULL,
  localite char(25) NOT NULL,
  capacite int NOT NULL,
  PRIMARY KEY (avion_id)
) ENGINE=INNODB;


# Création de la table pilote
CREATE TABLE IF NOT EXISTS pilote (
  pilote_id int NOT NULL AUTO_INCREMENT,
  nom varchar(50) NOT NULL,
  prenom varchar(50) NOT NULL,
  adresse varchar(255) NOT NULL,
  PRIMARY KEY (pilote_id)
) ENGINE=INNODB;


# Création de la table vol
CREATE TABLE IF NOT EXISTS vol (
  num_vol varchar(25) NOT NULL,
  id_pilote int NOT NULL,
  id_avion int NOT NULL,
  villeDepart char(25) NOT NULL,
  villeDestination char(25) NOT NULL,
  heureDepart time NOT NULL,
  heureArrive time NOT NULL
) ENGINE=INNODB;





INSERT INTO pilote (nom, prenom, adresse)
VALUES
('RYAD', 'KHECHINE',"68 rue paul valery 7500 paris" ),
('Sara', 'Dahmane', "24 jacqueline Auriol 31200 Toulouse" ),
('Hiba', 'Adjmi',"40bis Rue ernest Renan 14000" ),
('Zozo', 'dodo',"203 Route de launaguet 82000" ),
('toto', 'nathalie',"2 Rue jouy en josas 78000" );


INSERT INTO avion (avion_id, fabricant, modele, localite, capacite)
VALUES
(111, 'BOEING', '787',"NAIROBI",300 ),
(112, 'BOEING', '737',"SYDNEY",250 ),
(113, 'AIRBUS', '320',"MILAN",220 ),
(114, 'AIRBUS', '250',"PARIS",150 );

INSERT INTO vol(num_vol, id_pilote, id_avion, villeDepart, villeDestination, heureDepart,heureArrive)
VALUES
('IT100', 3, 112, 'PARIS', 'PORTUGAL', 0800,1030),
('IT104', 5, 112, 'ESPAGNE', 'ALGERIE', 0500,0630),
('F0857', 2, 114, 'TUNISIE', 'ITALIE', 1600,1930);