-- Active: 1669847205780@@127.0.0.1@3306@projet3
SELECT * FROM contrats_clients;
SELECT * FROM referenciel_regions;

SELECT COUNT(Contrat_ID), Type_contrat
FROM contrats_clients
WHERE Type_contrat = 'Residence principale' ;
--Nombre de contrat pour les résidences principale

SELECT ROUND(AVG(Surface),1) AS Surface
FROM contrats_clients
WHERE Code_departement ='75';
--Surface moyenne des contrat à Paris (arrondi)

SELECT 
    Contrat_ID AS Num_de_contrat,
    Surface
FROM contrats_clients
ORDER BY Surface DESC
LIMIT 5;
--Contrat avec la surface la plus élevé

SELECT ROUND(AVG(Prix_cotisation_mensuel),2)
FROM contrats_clients;
--Quel est le prix moyen de la cotisation mensuelle ?

SELECT 
    Valeur_declaree_biens, COUNT(*) AS Nombre_totel
FROM contrats_clients
GROUP BY Valeur_declaree_biens;
--Nombre de contrats pour chaque catégorie de prix de la valeur déclarée des biens 

SELECT 
    DISTINCT r.dep_nom AS Nom_departement,
    c.Prix_cotisation_mensuel AS Cotisation_mensuel,
    c.Code_departement AS Num_departement
    
FROM 
    contrats_clients c, 
    referenciel_regions r  


ORDER BY c.Prix_cotisation_mensuel DESC 
LIMIT 10;
--Classement des 10 départements ou le prix moyen de la cotisation est le plus élevé 




