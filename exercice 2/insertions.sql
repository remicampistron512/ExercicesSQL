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

