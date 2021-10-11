#Afficher tous les avions :
select * from avion;

#Afficher tous les avions par ordre croissant sur le fabricant
select * from avion order by fabricant asc;

#Afficher les noms et les capacités des avions
select nom,capacite from avion;

#Afficher les localités des avions sans redondance
select distinct(localite) from avion;

#Afficher les avions dans la localité et NAIROBI ou MILAN
select * from avion where localite = NAIROBI OR localite = MILAN;

#Modifier la capacité de l’avion numéro 113, la nouvelle capacité et 400
update avion set capacite = 400 where avion.avion_id = 113;

#Supprimer les avions dans la capacité et inférieure à 200
delete from avion where capacite <=200;

#Afficher la capacité maximale, minimale, moyenne des avions
select max(capacite) from avion;
select min(capacite) from avion;
select avg(capacite) from avion;

#Afficher les données des avions dont la capacité et la plus basse
select * from avion where min(capacite);

#Afficher les données des avions dont la capacité et supérieure à la capacité moyenne (à revoir)
select * from avion where capacite > avg(capacite);

#Afficher le nom et l’adresse des pilotes assurant les vols IT100 et IT104 (à revoir)
select pilote.nom,pilote.adresse from pilote inner join vol pilote.pilote_id = idPilote where numeroVol = IT100 AND numeroVol = IT104;




