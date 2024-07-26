1 --cree une base de données:hopital;
2 --cree une table: 
CREATE TABLE 
association_patient_chambre (
  id_patient int(5) NOT NULL,
  id_chambre int(5) NOT NULL,
  date_entree date NOT NULL,
  date_sortie date NOT NULL
)
3 --inserer les données suivant:
INSERT INTO association_patient_chambre
(id_patient, id_chambre, date_entree, date_sortie)
(1, 10, '2011-02-01', '2011-02-15'),
(2, 17, '2011-01-01', '2011-02-01'),
(3, 11, '2010-05-28', '2010-07-26'),
(4, 11, '2010-11-11', '2011-01-15'),
(5, 12, '2010-12-01', '2011-01-15'),
(6, 6, '2011-01-10', '2011-02-15'),
(7, 13, '2011-01-07', '2011-01-30'),
(8, 8, '2011-01-09', '2011-01-11'),
(9, 14, '2011-01-21', '2011-02-11'),
(10, 10, '2011-01-18', '2011-02-02'),
(11, 2, '2011-01-13', '2011-01-14'),
(12, 2, '2011-01-11', '2011-01-11'),
(13, 13, '2011-02-01', '2011-02-17'),
(14, 3, '2011-02-01', '2011-02-02'),
(15, 4, '2011-02-01', '2011-02-05'),
(16, 16, '2011-02-01', '2011-02-09'),
(17, 4, '2011-02-07', '2011-02-09'),
(18, 7, '2011-02-09', '2011-02-11'),
(19, 19, '2011-02-07', '2011-02-16'),
(20, 7, '2011-02-01', '2011-02-02'),
(21, 18, '2011-02-01', '2011-02-13'),
(22, 22, '2011-02-01', '2011-02-19'),
(23, 23, '2011-01-11', '2011-02-10'),
(24, 24, '2011-01-05', '2011-02-23'),
(25, 21, '2011-01-15', '2011-02-08'),
(26, 26, '2011-02-08', '2011-02-22'),
(27, 10, '2011-02-09', '2011-02-21'),
(28, 27, '2011-02-08', '2011-02-27'),
(29, 8, '2011-02-01', '2011-02-06'),
(30, 9, '2011-02-01', '2011-02-08'),
(31, 20, '2011-02-01', '2011-02-25'),
(32, 15, '2011-02-01', '2011-02-25'),
(33, 25, '2011-02-05', '2011-02-19'),
(34, 5, '2011-02-12', '2011-02-13'),
(35, 27, '2011-02-01', '2011-02-18'),
(36, 21, '2011-02-09', '2011-02-23'),
(37, 6, '2011-02-16', '2011-02-17'),
(38, 3, '2011-02-08', '2011-02-10'),
(39, 2, '2011-02-01', '2011-02-01'),
(40, 1, '2011-02-10', '2011-02-10');

4 --cree la table:
CREATE TABLE  
chambre (
  id_chambre int(5) NOT NULL auto_increment,
  capacite int(1) NOT NULL,
  id_service int(5) NOT NULL,
  PRIMARY KEY  (id_chambre)
)
5 --inserer les données suivant:
INSERT INTO chambre
(id_chambre, capacite, id_service) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 2, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 2, 2),
(11, 1, 2),
(12, 1, 2),
(13, 1, 2),
(14, 1, 2),
(15, 2, 2),
(16, 1, 2),
(17, 1, 2),
(18, 1, 2),
(19, 1, 3),
(20, 2, 3),
(21, 1, 3),
(22, 1, 3),
(23, 1, 3),
(24, 1, 3),
(25, 2, 3),
(26, 1, 3),
(27, 1, 3);

6 --cree la table:
CREATE TABLE
patient (
  id_patient int(5) NOT NULL auto_increment,
  prenom varchar(25) NOT NULL,
  nom varchar(25) NOT NULL,
  sexe char(1) NOT NULL,
  poids int(3) NOT NULL,
  taille int(3) NOT NULL,
  telephone varchar(10) NOT NULL,
  date_naissance date NOT NULL,
  date_admission date NOT NULL,
  date_sortie date NOT NULL,
  PRIMARY KEY  (id_patient)
)
7 --inserer les données suivant:
INSERT INTO patient
(id_patient, prenom, nom, sexe, poids, taille, telephone, date_naissance, date_admission, date_sortie) VALUES
(1, 'william', 'chavel', 'm', 70, 175, '0146216430', '1960-12-01', '2011-02-01', '2011-02-15'),
(2, 'gaetan', 'cottet', 'm', 72, 170, '0151184997', '1965-11-28', '2011-01-01', '2011-02-01'),
(3, 'jean', 'laborde', 'm', 65, 190, '0185102539', '1985-10-02', '2010-05-28', '2010-07-26'),
(4, 'charles', 'grand', 'm', 55, 165, '0117583312', '1969-06-06', '2010-11-11', '2011-01-15'),
(5, 'brigitte', 'fellier', 'f', 70, 163, '0114081420', '1967-03-07', '2010-12-01', '2011-01-15'),
(6, 'sarah', 'lafaye', 'f', 61, 166, '0186593933', '1986-08-23', '2011-01-10', '2011-02-15'),
(7, 'lucas', 'durand', 'm', 82, 175, '0180301513', '1961-12-01', '2011-01-07', '2011-01-30'),
(8, 'quentin', 'dupont', 'm', 83, 180, '0117396545', '1972-02-17', '2011-01-09', '2011-01-11'),
(9, 'patrick', 'lieutan', 'm', 88, 182, '0144348754', '1981-03-10', '2011-01-21', '2011-02-11'),
(10, 'emmanuel', 'winter', 'm', 87, 175, '0183858337', '1976-12-01', '2011-01-18', '2011-02-02'),
(11, 'elodie', 'blanchet', 'f', 50, 162, '0157746582', '1980-12-05', '2011-01-13', '2011-01-14'),
(12, 'agathe', 'laborde', 'f', 53, 159, '0162033996', '1988-12-10', '2011-01-11', '2011-01-11'),
(13, 'valentine', 'massin', 'f', 52, 167, '0110455932', '1985-12-11', '2011-02-01', '2011-02-17'),
(14, 'charlotte', 'desprez', 'f', 63, 169, '0117665710', '1982-12-01', '2011-02-01', '2011-02-02'),
(15, 'alice', 'geraud', 'f', 58, 163, '0148375244', '1977-03-02', '2011-02-01', '2011-02-05'),
(16, 'samuel', 'sennard', 'm', 70, 175, '0113683166', '1972-07-02', '2011-02-01', '2011-02-09'),
(17, 'mathieu', 'perrin', 'm', 69, 177, '0110840454', '1980-12-11', '2011-02-07', '2011-02-09'),
(18, 'noemie', 'miller', 'f', 53, 165, '0187703552', '1979-09-09', '2011-02-09', '2011-02-11'),
(19, 'simon', 'martin', 'm', 70, 170, '0138125000', '1965-10-09', '2011-02-07', '2011-02-16'),
(20, 'florian', 'lagarde', 'm', 73, 189, '0149531555', '1990-12-01', '2011-02-01', '2011-02-02'),
(21, 'clement', 'quotin', 'm', 71, 207, '0198939819', '1982-05-30', '2011-02-01', '2011-02-13'),
(22, 'yvon', 'cognet', 'm', 70, 172, '0188659362', '1970-07-19', '2011-02-01', '2011-02-19'),
(23, 'lea', 'sicra', 'f', 70, 175, '0157933349', '1973-12-01', '2011-01-11', '2011-02-10'),
(24, 'chloe', 'subar', 'f', 70, 175, '0131766662', '1975-12-01', '2011-01-05', '2011-02-23'),
(25, 'camille', 'biancalani', 'f', 77, 188, '0113191528', '1976-11-16', '2011-01-15', '2011-02-08'),
(26, 'alexandre', 'tuison', 'm', 68, 178, '0140220642', '1973-06-22', '2011-02-08', '2011-02-22'),
(27, 'julie', 'lobreau', 'f', 70, 175, '0193737792', '1979-07-07', '2011-02-09', '2011-02-21'),
(28, 'leo', 'flandroi', 'm', 76, 175, '0147575988', '1971-04-05', '2011-02-08', '2011-02-27'),
(29, 'antoine', 'radic', 'm', 55, 175, '0177033081', '1945-10-15', '2011-02-01', '2011-02-06'),
(30, 'lola', 'avinel', 'f', 70, 175, '0197074890', '1935-12-27', '2011-02-01', '2011-02-08'),
(31, 'celia', 'rambier', 'f', 48, 160, '0186475830', '1973-12-07', '2011-02-01', '2011-02-25'),
(32, 'anna', 'neumann', 'f', 45, 158, '0149147033', '1930-12-01', '2011-02-01', '2011-02-25'),
(33, 'caroline', 'masson', 'f', 54, 159, '0128901977', '1955-03-25', '2011-02-05', '2011-02-19'),
(34, 'adele', 'lopez', 'f', 67, 180, '0198909606', '1957-07-25', '2011-02-12', '2011-02-13'),
(35, 'sabrina', 'leroy', 'f', 56, 160, '0122084960', '1929-01-16', '2011-02-01', '2011-02-18'),
(36, 'nathalie', 'compan', 'f', 88, 169, '0133667297', '1982-09-22', '2011-02-09', '2011-02-23'),
(37, 'franck', 'arbaud', 'm', 95, 185, '0112235717', '1980-08-17', '2011-02-16', '2011-02-17'),
(38, 'tom', 'rigaud', 'm', 73, 182, '0120412292', '1986-11-08', '2011-02-08', '2011-02-10'),
(39, 'johan', 'gibert', 'm', 70, 175, '0121502685', '1928-11-15', '2011-02-01', '2011-02-01'),
(40, 'priscillia', 'messini', 'f', 63, 170, '0143324279', '1961-10-11', '2011-02-10', '2011-02-10');

8 --cree la table:
CREATE TABLE
personnel (
  id_personnel int(5) NOT NULL auto_increment,
  prenom varchar(25) NOT NULL,
  nom varchar(25) NOT NULL,
  sexe char(1) NOT NULL,
  profession varchar(25) NOT NULL,
  qualite varchar(25) NOT NULL,
  date_naissance date NOT NULL,
  salaire int(6) NOT NULL,
  id_service varchar(5) NOT NULL,
  PRIMARY KEY  (id_personnel)
)
9 --inserer les données suivant:
INSERT INTO personnel
(id_personnel, prenom, nom, sexe, profession, qualite, date_naissance, salaire, id_service) VALUES
(1, 'nathan', 'charvet', 'm', 'infirmier', 'employes', '1980-08-26', 1600, '1'),
(2, 'aurore', 'nicodeme', 'f', 'infirmier', 'employes', '1951-01-31', 1600, '1'),
(3, 'marie', 'archimbaud', 'f', 'secretaire', 'employes', '1978-02-01', 1300, '1'),
(4, 'oceane', 'trousse', 'f', 'infirmier', 'employes', '1983-11-23', 1600, '1'),
(5, 'enzo', 'delclos', 'm', 'infirmier', 'stagiaire', '1981-06-10', 700, '1'),
(6, 'ines', 'moulet', 'f', 'aide soignant', 'employes', '1988-05-21', 1400, '1'),
(7, 'hugo', 'larousse', 'm', 'medecin', 'employes', '1971-06-20', 1900, '1'),
(8, 'jonathan', 'durak', 'm', 'medecin', 'employes', '1986-03-15', 2000, '2'),
(9, 'axelle', 'boyet', 'f', 'secretaire', 'employes', '1968-04-17', 1300, '2'),
(10, 'morgane', 'baget', 'f', 'psychologue', 'employes', '1965-03-11', 1700, '3'),
(11, 'melissa', 'garcia', 'f', 'infirmier', 'employes', '1987-08-10', 1600, '3'),
(12, 'kevin', 'lagain', 'm', 'infirmier', 'employes', '1981-01-06', 1600, '2'),
(13, 'ophelie', 'peyras', 'f', 'medecin', 'employes', '1960-12-08', 2000, '3'),
(14, 'victoria', 'mazet', 'f', 'infirmier', 'employes', '1976-08-26', 1650, '2'),
(15, 'alexis', 'desmaison', 'm', 'infirmier', 'employes', '1980-01-29', 1600, '3'),
(16, 'robin', 'audy', 'm', 'infirmier', 'employes', '1970-09-29', 1600, '3'),
(17, 'assia', 'givaudan', 'f', 'infirmier', 'employes', '1960-05-05', 1500, '2');

10 --cree la table:
CREATE TABLE service (
  id_service int(5) NOT NULL auto_increment,
  nom varchar(25) NOT NULL,
  PRIMARY KEY  (id_service)
)

11--inserer les données suivant:
INSERT INTO service
(id_service, nom) 
(1, 'urgence'),
(2, 'cardiologie'),
(3, 'neurologie'),
(4, 'orthopedie-rhumatologie'),
(5, 'reanimation');













-- les requetes 

1. Quels sont les services de l’hôpital ?
Colonnes à afficher :
+------------+-------------------------+
| id_service | nom                     |
+------------+-------------------------+ 

Requête : SELECT id_service, nom FROM services;


2. Affichez le prénom des patients.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête : SELECT prenom FROM patients;


3. Affichez le numéro de téléphone du patient ayant le prénom « antoine ».
Colonnes à afficher :
+------------+
| telephone  |
+------------+ 

Requête : SELECT telephone FROM patients WHERE prenom = 'antoine';


4. Affichez le premier enregistrement de la table « personnel ».
Colonnes à afficher :
+--------------+--------+---------+------+------------+----------+----------------+---------+------------+
| id_personnel | prenom | nom     | sexe | profession | qualite  | date_naissance | salaire | id_service |
+--------------+--------+---------+------+------------+----------+----------------+---------+------------+ 

Requête : SELECT * FROM personnel LIMIT 1;


5. Affichez le nombre de patients (Alias : Nombre_de_patients).
Colonnes à afficher :
+--------------------+
| nombre_de_patients |
+--------------------+ 

Requête : SELECT COUNT(*) AS nombre_de_patients FROM patients;


6. Affichez les membres du personnel ayant un salaire supérieur à « 1600 » €.
Colonnes à afficher :
+--------------+----------+----------+------+-------------+----------+----------------+---------+------------+
| id_personnel | prenom   | nom      | sexe | profession  | qualite  | date_naissance | salaire | id_service |
+--------------+----------+----------+------+-------------+----------+----------------+---------+------------+

Requête : SELECT id_personnel, prenom, nom, sexe, profession, qualite, date_naissance, salaire, id_service FROM personnel
WHERE salaire > 1600;



7. Combien de chambres peuvent recevoir plusieurs patients simultanément ? (alias : nb) 
Colonnes à afficher :
+----+
| nb |
+----+  

Requête : SELECT COUNT(*) AS nb FROM chambre WHERE capacite > 2;


8. Affichez les prénoms des patients de sexe « féminin ».
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête : SELECT prenom FROM patient WHERE sexe = 'f';


9. Quel est le membre du personnel le plus jeune ?
Colonnes à afficher :
+--------------+--------+--------+------+---------------+----------+----------------+---------+------------+
| id_personnel | prenom | nom    | sexe | profession    | qualite  | date_naissance | salaire | id_service |
+--------------+--------+--------+------+---------------+----------+----------------+---------+------------+ 

Requête : SELECT * FROM personnel ORDER BY date_naissance DESC LIMIT 1;


10. Quels sont les salaires moyens dans les différentes professions représentées au sein de l’hôpital ? (en limitant à 2 chiffres après la virgule, en donnant l’alias « salaire moyen » et en les classant dans l’ordre croissant).
Colonnes à afficher :
+---------------+---------------+
| profession    | salaire moyen |
+---------------+---------------+ 

Requête : SELECT profession, ROUND(AVG(salaire), 2) AS "salaire moyen" FROM personnel GROUP BY profession ORDER BY "salaire moyen";

11. Quel est le salaire annuel de « Ophelie » ayant l’id « 13 » ? (alias : salaire_annuel)
Colonnes à afficher :
+----------------+
| salaire_annuel |
+----------------+ 

Requête : SELECT salaire * 12 AS salaire_annuel FROM personnel WHERE prenom = 'ophelie' AND id_personnel = 13;


12. Quelles étaient les chambres occupées entre le 01 février 2011 et le 15 février 2011 ?
Colonnes à afficher :
+------------+------------+-------------+-------------+
| id_patient | id_chambre | date_entree | date_sortie |
+------------+------------+-------------+-------------+

Requête : 

13. Quel sont les prénoms des membres du personnel travaillant au service « urgence » ?
Colonnes à afficher :
+--------+------------+
| prenom | id_service |
+--------+------------+ 

Requête : SELECT prenom, id_service FROM personnel WHERE id_service = (SELECT id_service FROM service WHERE nom = 'urgence');


14. Dans quelle(s) chambre(s) a séjourné la patiente ayant le prénom « elodie » ?
Colonnes à afficher :
+------------+
| id_chambre |
+------------+

Requête : SELECT DISTINCT id_chambre FROM association_patient_chambre WHERE id_patient = (SELECT id_patient FROM patient WHERE prenom = 'elodie');



15. Dans quel(s) service(s) a séjourné la patiente ayant le prénom « elodie » ?
Colonnes à afficher :
+---------+
| nom     |
+---------+

Requête :


16. Affichez les informations sur les chambres du service « neurologie » 
Colonnes à afficher :
+------------+------------+----------+
| nom        | id_chambre | capacite |
+------------+------------+----------+ 

Requête :


17. Quels étaient les prénoms des patients se trouvant à l’hôpital entre le 01 février 2011 et le 15 février 2011, et dans quelle(s) chambre(s) se trouvaient-ils ?
Colonnes à afficher :
+------------+------------+------------+-------------+-------------+
| prenom     | id_patient | id_chambre | date_entree | date_sortie |
+------------+------------+------------+-------------+-------------+

Requête :


18. Un lit a été ajouté dans toutes les chambres du service « neurologie ». Modifiez leur capacité.
Requête :


19. Combien y’a-t-il d’infirmiers par service ?
Colonnes à afficher :
+-------------+-----------------+
| nom         | count(p.prenom) |
+-------------+-----------------+

Requête :


20. Quel est le médecin potentiel qui s’est occupé de la patiente ayant le prénom « charlotte » lors de son passage à l’hôpital ?
Colonnes à afficher :
+--------+----------+------------+------------+------------+
| prenom | nom      | profession | prenom     | id_patient | 
+--------+----------+------------+------------+------------+

Requête :


21. Affichez le nom et le prénom des patients ainsi que le service dans lequel ils ont séjourné.
Colonnes à afficher :
+--------+---------+-----------------+
| nom    | prenom  | service         |
+--------+---------+-----------------+

Requête :


22. Affichez les informations des patients ayant séjourné dans des chambres du service "cardiologie".
Colonnes à afficher :
+-----------+-----------+-----------+------+---------+--------+----------+------------+---------------------+-------------+-------------+
| id_patient | prenom | nom | sexe | poids | taille | telephone | date_naissance | date_admission | date_sortie |
+-----------+-----------+-----------+------+---------+--------+----------+------------+---------------------+-------------+-------------+

Requête :


23. Affichez le nom des services qui ont plus de 5 chambres.
Colonnes à afficher :
+-----------------+
| nom             |
+-----------------+

Requête :


24. Affichez les prénoms des patients dont le poids est supérieur à la moyenne des poids des patients.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête : SELECT prenom FROM patient WHERE poids > (SELECT AVG(poids) FROM patient)


25. Affichez les prénoms des membres du personnel travaillant dans le même service que "kevin".
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête :


26. Affichez les prénoms et les noms des patients qui ont séjourné dans la même chambre que "lucas".
Colonnes à afficher :
+------------+----------+
| prenom     | nom      |
+------------+----------+

Requête :


27. Affichez les prénoms des patients et les noms des services pour lesquels le patient a séjourné plus de 10 jours.
Colonnes à afficher :
+------------+------------+
| prenom     | nom        |
+------------+------------+

Requête :


28. Affichez les prénoms des membres du personnel nés avant l année 1980.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête : SELECT prenom FROM personnel WHERE YEAR(date_naissance) < 1980;


29. Affichez les prénoms des patients et des membres du personnel qui partagent le même prénom.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête : SELECT DISTINCT prenom FROM patient JOIN personnel ON prenom = "prenom";


30. Affichez les prénoms des patients et le nombre de chambres dans lesquelles ils ont séjourné.
Colonnes à afficher :
+------------+---------------------+
| prenom     | nombre_de_chambres  |
+------------+---------------------+

Requête :


31. Affichez les prénoms des patients qui ont séjourné dans une chambre avec une capacité de 2 personnes.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête :


32. Affichez les prénoms des patients qui n ont pas de date de sortie.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête :


33. Affichez les prénoms des patients qui ont le même prénom qu un membre du personnel et qui ont séjourné en même temps que ce membre du personnel.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête :


34. Affichez les noms des services et le nombre de chambres vides qu ils ont.
Colonnes à afficher :
+------------+-----------------+
| nom        | chambres_vides  |
+------------+-----------------+

Requête :


35. Affichez les prénoms des patients et le nombre de jours passés dans l hôpital.
Colonnes à afficher :
+------------+-----------------------+
| prenom     | jours_a_l_hopital     |
+------------+-----------------------+

Requête :


36. Affichez les noms des services et le nombre total de jours de séjour des patients dans ces services.
Colonnes à afficher :
+------------+-------------------+
| nom        | jours_total       |
+------------+-------------------+

Requête :


37. Affichez les prénoms des patients qui ont séjourné dans la chambre n°10 plus de deux fois.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête :


38. Affichez les prénoms des patients qui ont séjourné dans des chambres du service "reanimation".
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête :


39. Affichez les prénoms des patients qui ont été admis à l hôpital avant l année 2011.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête :


40. Affichez les prénoms des patients qui ont un numéro de téléphone se terminant par '5'.
Colonnes à afficher :
+------------+
| prenom     |
+------------+

Requête : SELECT prenom FROM patient WHERE telephone LIKE '%5';