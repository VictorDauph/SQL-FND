-- 2

SELECT 
    id, 
    produit, 
    date_vente, 
    MONTH(date_vente) AS mois_vente
FROM 
    ventes;


--3

SELECT 
    id, 
    produit, 
    date_vente, 
    LAST_DAY(date_vente) AS dernier_jour_du_mois
FROM 
    ventes;


--4

SELECT 
    id, 
    produit, 
    date_vente, 
    WEEK(date_vente) AS semaine_de_l_annee
FROM 
    ventes;

--5

SELECT 
    id, 
    produit, 
    date_vente, 
    DATE_ADD(date_vente, INTERVAL 15 DAY) AS date_future
FROM 
    ventes;

 --6

 SELECT 
    id, 
    produit, 
    date_vente, 
    DATEDIFF(CURRENT_DATE, date_vente) AS difference_en_jours
FROM 
    ventes;