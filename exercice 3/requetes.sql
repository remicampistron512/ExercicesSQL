SELECT `c_nom`,`c_adresse`,`c_tel`,c_marque,c_type,v_annee,a_designation,a_marque,o_prix_unitaire,o_heures_passees,ROUND(o_prix_unitaire * o_heures_passees, 2) as montant_total
FROM g_or 
INNER JOIN g_client ON g_client.c_id = o_fk_client
INNER JOIN g_voiture_client ON v_id = o_fk_voiture_client
INNER JOIN g_catalogue_voiture ON g_catalogue_voiture.c_id = v_fk_catalogue_voiture
INNER JOIN g_article ON g_catalogue_voiture.c_id = a_fk_catalogue_voiture
WHERE o_id = 2;


BEGIN
    DECLARE id_catalogue INT;

    -- Récupérer le modèle de la voiture (catalogue)
    SELECT v_fk_cataloque_voiture
    INTO id_catalogue
    FROM g_voiture_client
    WHERE v_id = NEW.o_fk_voiture_client;

    -- Diminuer la quantité de tous les articles associés à ce modèle
    UPDATE g_article
    SET a_quantite = a_quantite - 1
    WHERE a_fk_catalogue_voiture = id_catalogue;
END