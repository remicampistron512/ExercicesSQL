SELECT a_quantite, c_marque, c_type
FROM g_article
INNER JOIN g_catalogue_voiture
ON a_fk_catalogue_voiture = c_id
WHERE `a_reference` = 2234006;

SELECT c_nom, c_adresse, c_tel
FROM g_client
INNER JOIN g_voiture_client
ON c_id = v_fk_client
WHERE v_plaque = "XM-555-MZ";


SELECT c_marque, c_type ,v_annee
FROM g_voiture_client
INNER JOIN g_client
ON g_client.c_id = v_fk_client
INNER JOIN g_catalogue_voiture
ON g_catalogue_voiture.c_id = v_fk_cataloque_voiture
WHERE c_nom = "Pierre Dupont";

SELECT 
    o_heures_passees,
    o_prix_unitaire,
    ROUND(o_heures_passees * o_prix_unitaire, 2) AS montant
FROM g_or;