SELECT *
FROM commandes
WHERE prix > 100
  AND reference_de_commande LIKE 'REF0%'
  AND produit != 'Produit 5';


 -- OU

  SELECT *
FROM commandes
WHERE prix > 100
  AND reference_de_commande LIKE 'REF0%'
  AND produit NOT LIKE '%5';