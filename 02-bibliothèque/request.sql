--REQUETE IMBRQUER (jointure)
SELECT titre FROM livre WHERE id_livre IN
(SELECT livre_id FROM emprunt WHERE date_rendu IS NULL); -- 100 et 105


-- Exo : afficher les prénoms des abonnés qui n'ont pas rendu les livres à la bibliothèque 

-- +--------+
-- | prenom |
-- +--------+
-- | Benoit |
-- | Chloé  |
-- +--------+

SELECT prenom FROM abonne WHERE id_abonne IN
(SELECT abonne_id FROM emprunt WHERE date_rendu IS NULL); -- 2 et 3


-- Exo : affichez les ID des livres que Chloé a emprunté à la bibliothèque 
SELECT livre_id FROM emprunt WHERE abonne_id =
(SELECT id_abonne FROM abonne WHERE prenom = 'Chloé'); -- 3

-- +----------+
-- | livre_id |
-- +----------+
-- |      100 |
-- |      105 |
-- +----------+


-- Exo : affichez les prénoms des abonnés ayant emprunté un livre le 19/12/2014
SELECT prenom FROM abonne WHERE id_abonne IN
(SELECT abonne_id FROM emprunt WHERE date_sortie = '2014-12-19'); -- 3 et 4

-- +-----------+
-- | prenom    |
-- +-----------+
-- | Guillaume |
-- | Chloé     |
-- | Laura     |
-- +-----------+

-- Exo : Combien de livre Guillaume a emprunté à la bibliotheque ? 
SELECT COUNT(abonne_id) AS 'nombre de livre' FROM emprunt WHERE abonne_id =
(SELECT id_abonne FROM abonne WHERE prenom = 'Guillaume'); --1




-- Exo : Afficher la liste des abonnés ayant déja emprunté un livre d'Alphonse Daudet

SELECT prenom FROM abonne WHERE id_abonne IN 
(SELECT abonne_id FROM emprunt WHERE livre_id IN
(SELECT id_livre FROM livre WHERE auteur = 'ALPHONSE DAUDET'));

-- +--------+
-- | prenom |
-- +--------+
-- | Laura  |
-- +--------+

-- Exo : Afficher le titre des livres que Chloé a emprunté à la bibliothèque

SELECT titre FROM livre WHERE id_livre IN
    (SELECT livre_id FROM emprunt WHERE abonne_id =
(SELECT id_abonne FROM abonne WHERE prenom = 'Chloé')); -- 3
-- +-------------------------+
-- | titre                   |
-- +-------------------------+
-- | Une vie                 |
-- | Les Trois Mousquetaires |
-- +-------------------------+


-- Exo : Qui a emprunté le plus de livres à la bibliotheque ? 
SELECT prenom FROM abonne WHERE id_abonne =
(SELECT abonne_id FROM emprunt GROUP BY abonne_id ORDER BY COUNT(abonne_id) DESC LIMIT 1); -- 2

-- +--------+
-- | prenom |
-- +--------+
-- | Benoit |
-- +--------+

-- Exo : afficher le titre des livres que Chloé n'a pas rendu à la bibliothèque
SELECT titre FROM livre WHERE id_livre IN 
(SELECT livre_id FROM emprunt WHERE abonne_id = 
(SELECT id_abonne FROM abonne WHERE prenom = 'Chloé') AND date_rendu IS NULL); -- 3



-- #################### JOINTURE #########################