/* INSERTS */

INSERT INTO `g_voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`, `v_fk_article_id`) VALUES
(NULL, 'Renault', 'CLIO 4', 'essence', 1),
(NULL, 'Peugeot', '208', 'diesel', 2),
(NULL, 'Peugeot', '308', 'essence', 3),
(NULL, 'Citroën', 'C3', 'essence', 4),
(NULL, 'Citroën', 'C4 Picasso', 'diesel', 5),
(NULL, 'Volkswagen', 'Golf 7', 'diesel', 6),
(NULL, 'Volkswagen', 'Polo', 'essence', 7),
(NULL, 'Toyota', 'Yaris', 'hybride', 8),
(NULL, 'Toyota', 'Corolla', 'hybride', 9),
(NULL, 'Dacia', 'Duster', 'diesel', 10);

INSERT INTO `g_article` (`a_id`, `a_reference`, `a_designation`, `a_marque`, `a_quantite`) VALUES
(NULL, '7858747', 'essuie-glace arrière', 'VALEO', '2'),
(NULL, '48541232', 'filtre à air', 'MANN', '5'),
(NULL, '96587412', 'filtre à huile', 'BOSCH', '8'),
(NULL, '32587469', 'plaquettes de frein avant', 'BREMBO', '4'),
(NULL, '32587470', 'plaquettes de frein arrière', 'BREMBO', '6'),
(NULL, '21457896', 'ampoule H7 12V', 'PHILIPS', '20'),
(NULL, '21457897', 'ampoule H4 12V', 'OSRAM', '15'),
(NULL, '65874123', 'bougie d’allumage', 'NGK', '12'),
(NULL, '74859612', 'courroie de distribution', 'DAYCO', '3'),
(NULL, '84579631', 'filtre habitacle', 'PURFLUX', '7');


/* JOINS */

SELECT a_reference , a_marque , v_energie FROM g_article INNER JOIN g_voiture ON a_id = v_fk_article_id;
SELECT  a_reference , a_marque , v_energie FROM g_article LEFT JOIN g_voiture ON a_id = v_fk_article_id;


/* UPDATES */

UPDATE g_article SET a_quantite = 25 WHERE a_id = 5;
UPDATE g_article SET a_marque = "BOSCH" WHERE a_id = 5;

/* ENLEVE ET REMET LA CONTRAINTE */

ALTER TABLE g_voiture  DROP FOREIGN KEY article_fk
ALTER TABLE `g_voiture` ADD CONSTRAINT `article_fk` FOREIGN KEY (`v_fk_article_id`) REFERENCES `g_article` (`a_id`) ON UPDATE CASCADE ON DELETE CASCADE

/* DELETE */

DELETE FROM g_article WHERE a_id = 5

