SELECT prenom, nom, sexe, service, salaire FROM employes; 
-- requete de selection de tous les champs de la table employes 

SELECT * FROM employes;
-- requete de selection de tous les champs de la table employes (* tous les champs)

SELECT service FROM employes;
-- requete de selection de tous les champs de la table employes

SELECT DISTINCT service FROM employes;
-- requete de selection des valeurs distinctes de la colonne service de la table employes
-- DISTINCT permet de ne pas afficher les doublons

--WHERE (condition ou contrainte

--exemple
SELECT prenom FROM employes WHERE service = 'informatique';
-- requete de selection des prenoms des employes travaillant dans le service informatique
-- WHERE ne peut être utilisé qu'une seule fois dans une requete

-- Affichage des employés avant été recrutés entre 2010 et aujourd'hui 
SELECT prenom FROM employes WHERE date_embauche BETWEEN '2010/01/01' AND CURDATE();
-- BETWEEN permet de selectionner les valeurs comprises entre deux valeurs

-- Affichage des employés ayant un prénom commençant par la lettre 's'
SELECT prenom FROM employees WHERE prenom LIKE 's%';
-- Affichage des employés ayant un prénom finnissant par la lettre 's'
SELECT prenom FROM employees WHERE prenom LIKE 's%';
-- Affichage des employés ayant un prénom composé
SELECT prenom FROM employes WHERE prenom LIKE '%-%'; 


-- OPERATEURS LOGIQQUES

-- = egal a 
-- != ou <> différent de 
-- <inferieur a 
-- >superieur a 
-- <= inferieur ou egal a 
-- >= superieur ou egal a 
-- AND (et)
-- OR (ou)


-- Affichage de tous les employés (sauf les informaticiens)
SELECT * FROM employes WHERE service != 'informatique';

-- Affichage de tous les employés gagnant un salaire supérieur à 3000€
SELECT * FROM employes WHERE salaire > 3000;

-- Affichage des employes dans l'ordre alphabétique des prénoms et l'inverse 
SELECT * FROM employes ORDER BY prenom ASC;
SELECT * FROM employes ORDER BY prenom DESC; 

-- ORDER BY permet de trier les resultats de la requete
-- ASC tri par ordre croissant
-- DESC tri par ordre décroissant


-- Affichage les prenom des 3 premiers employes par ordre alphabétique
SELECT prenom FROM employes ORDER BY prenom ASC LIMIT 3;

-- LIMIT permet de limiter le nombre de resultats de la requete

--recapitulatif des mots clés SQL
-- SELECT : selectionner des données
-- FROM : indique la table à selectionner
-- WHERE : condition ou contrainte
-- ORDER BY : trier les resultats
-- ASC : trier par ordre croissant
-- DESC : trier par ordre décroissant
-- LIMIT : limiter le nombre de resultats


-- Affichage des employés avec un salaire annuel 
SELECT prenom,nom,salaire,*12 AS 'salaire annuel' FROM employes;

-- AS permet de renommer une colone dans le resultat de la requete 

-- Affichage de la "masse salarial" sur 12 mois
SELECT SUM(salaire*12) AS 'masse salarial' FROM employes;
-- Affiache du salaire moyen 
SELECT AVG(salaire) AS 'salaire moyen' FROM employes

-- AVG permet de calculer la moyenne des valeurs d'une colonne 
-- SUM permet de calculer la somme des valeurs d'une colonne 
-- ROUND permet d'arrondir un nombre à un nombre de décimales près 

-- Affichage du nombre de femme(s) dans l'entreprise  
SELECT COUNT (sexe) AS 'nb femmes' FROM employees WHERE sexe = 'f';

-- COUNT permet de compter le nombre de valeurs d'une colonne 

-- Affichage du salaire minimum/maximum 

SELECT MIN(salaire) AS 'salaire minimum'FROM employes;
SELECT MAX(salaire) AS 'salaire miximum'FROM employes;

-- MIN permet de trouver la valeur minimale d'une colonne
-- MAX permet de trouver la valeur maximale d'une colonne


-- affichez les informations de l'employé gagnant le salaire la plus bas 
SELECT prenom, nom, MIN(salaire) AS 'salaire minimum' FROM employes; 

-- Affichage des employés travaillant au service comptabilité et informatique

SELECT * FROM employes WHERE service IN ('comptabilité', 'informatique');

-- IN permet d'include plusieurs valeurs dans une condition
-- = permet de selectionner une sule valeur dans une condition

-- affichez les commerciaux  gagnant un salaire inférieur ou égal à 2000€ 
SELECT* FROM employes WHERE service= 'commercial' AND salaire <= 2000;



INSERT INTO employes (prenom, nom, sexe, service, date_embauche, salaire) VALUES ('Jean', 'Dupont', 'm', 'comptabilité', '2018/01/01', 2500);
-- requete d'insertion d'un nouvel employé dans la table employes

--INSERT INTO permet d'ajouter une nouvelle ligne dans une table
DELETE FROM employes WHERE id_employes = 388;


