/* Insertions manuelles */

INSERT INTO g_catalogue_voiture(`c_marque`,`c_type`,`c_energie`)
VALUES ("Renault", "Clio 4", "Diesel");


INSERT INTO g_catalogue_voiture(`c_marque`,`c_type`,`c_energie`)
VALUES ("Peugeot", "208", "Diesel");


INSERT INTO g_article(`a_reference`,`a_designation`,`a_marque`,`a_quantite`,`a_fk_catalogue_voiture`)
VALUES (1234567, "filtre à air", "Valeo", 20, 6);


INSERT INTO g_article(`a_reference`,`a_designation`,`a_marque`,`a_quantite`,`a_fk_catalogue_voiture`)
VALUES (2345671, "essuie-glace", "Valeo", 12, 7);


INSERT INTO g_client(`c_nom`,`c_adresse`,`c_tel`)
VALUES ("Pierre Dupont", "120 rue des jonquilles", "050403534");

INSERT INTO g_client(`c_nom`,`c_adresse`,`c_tel`)
VALUES ("Marie Dupuis", "12 rue des marguerites", "0756215412");


INSERT INTO g_voiture_client(`v_plaque`,`v_annee`,`v_fk_cataloque_voiture`,`v_fk_client`)
VALUES ("XM-555-MZ",2015,6,1);

INSERT INTO g_or(`o_heures_passees`,`o_prix_unitaire`,`o_fk_client`,`o_fk_voiture_client`)
VALUES(8.5,40.23,1,1);

INSERT INTO g_or(`o_heures_passees`,`o_prix_unitaire`,`o_fk_client`,`o_fk_voiture_client`)
VALUES(12.5,53.20,2,2);

/* Insertions générées automatiquement */

/* Insertions de voitures */ 

INSERT INTO g_catalogue_voiture(`c_marque`,`c_type`,`c_energie`)
VALUES
("Renault", "Clio 5", "Essence"),
("Renault", "Megane 4", "Diesel"),
("Renault", "Captur", "Hybride"),
("Peugeot", "208", "Essence"),
("Peugeot", "308", "Diesel"),
("Peugeot", "3008", "Hybride"),
("Citroen", "C3", "Essence"),
("Citroen", "C4", "Diesel"),
("Citroen", "C5 Aircross", "Hybride"),
("Volkswagen", "Golf 7", "Diesel"),
("Volkswagen", "Polo", "Essence"),
("Volkswagen", "ID.3", "Electrique"),
("Toyota", "Yaris", "Hybride"),
("Toyota", "Corolla", "Hybride"),
("Dacia", "Duster", "Diesel"),
("Dacia", "Sandero", "Essence"),
("Ford", "Fiesta", "Essence"),
("Ford", "Focus", "Diesel"),
("Opel", "Corsa", "Essence"),
("Nissan", "Qashqai", "Hybride");


/* Insertions d'articles */

INSERT INTO g_article(`a_reference`,`a_designation`,`a_marque`,`a_quantite`,`a_fk_catalogue_voiture`)
VALUES
(2234001, "filtre à huile", "Bosch", 15, 8),
(2234002, "filtre habitacle", "Mann", 12, 9),
(2234003, "plaquettes de frein avant", "Brembo", 8, 10),
(2234004, "plaquettes de frein arrière", "Brembo", 10, 11),
(2234005, "disques de frein avant", "TRW", 6, 12),
(2234006, "disques de frein arrière", "TRW", 4, 13),
(2234007, "bougies d'allumage", "NGK", 16, 14),
(2234008, "essuie-glace avant", "Valeo", 25, 15),
(2234009, "essuie-glace arrière", "Valeo", 18, 16),
(2234010, "courroie de distribution", "Dayco", 5, 17),
(2234011, "courroie d'accessoire", "Continental", 7, 18),
(2234012, "pompe à eau", "Valeo", 3, 19),
(2234013, "sonde lambda", "Bosch", 9, 20),
(2234014, "débitmètre d'air", "Bosch", 4, 21),
(2234015, "amortisseur avant", "Monroe", 6, 22),
(2234016, "amortisseur arrière", "Monroe", 6, 23),
(2234017, "radiateur moteur", "Nissens", 2, 24),
(2234018, "ventilateur de refroidissement", "Valeo", 3, 25),
(2234019, "alternateur", "Bosch", 2, 26),
(2234020, "démarreur", "Bosch", 2, 27);

/* Insertions de clients */

INSERT INTO g_client(`c_nom`,`c_adresse`,`c_tel`)
VALUES
("Marie Martin", "15 avenue des Lilas", "010203040"),
("Jean Durand", "8 rue de la Liberté", "010405060"),
("Lucie Bernard", "24 boulevard Victor Hugo", "020304050"),
("Thomas Leroy", "3 impasse des Chênes", "020607080"),
("Sophie Robert", "52 rue des Acacias", "030102030"),
("Antoine Petit", "7 rue du Moulin", "030405060"),
("Claire Richard", "11 chemin des Vignes", "040102030"),
("Nicolas Moreau", "18 rue des Cerisiers", "040506070"),
("Julie Laurent", "9 place de la Gare", "050102030"),
("David Simon", "4 rue du Stade", "050607080"),
("Emilie Garcia", "36 rue des Peupliers", "060102030"),
("Paul Michel", "20 avenue de la République", "060304050"),
("Camille Fontaine", "14 rue des Tilleuls", "070102030"),
("Hugo Renault", "2 rue du Parc", "070506070"),
("Laura Faure", "27 rue des Coquelicots", "080102030"),
("Alexandre Blanc", "6 allée des Pins", "080304050"),
("Manon Roux", "19 rue des Écoles", "090102030"),
("Romain Vincent", "33 avenue des Roses", "090405060"),
("Chloé Colin", "5 rue du Marché", "010708090"),
("Kevin Perrin", "41 chemin du Lac", "020809010");


