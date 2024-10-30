CREATE TABLE commandes (
        id INT AUTO_INCREMENT PRIMARY KEY,
         reference_de_commande VARCHAR(20) NOT NULL UNIQUE, -- UNIQUE suffit, pas besoin de INDEX
         produit VARCHAR(100),
         prix INT UNSIGNED DEFAULT 0
        );




INSERT INTO commandes (reference_de_commande, produit, prix) 
VALUES
('REF001', 'Produit 1', 100),
('REF002', 'Produit 2', 150),
('REF003', 'Produit 3', 200),
('REF004', 'Produit 4', 120),
('REF005', 'Produit 5', 150),
('REF006', 'Produit 6', 50),
('REF007', 'Produit 7', 300),
('REF008', 'Produit 8', 90),
('REF009', 'Produit 9', 110),
('REF010', 'Produit 10', 75),
('REFA001', 'Produit 11', 50),
('REFA002', 'Produit 11', 35),
('REFA003', 'Produit 1', 80),
('REFA004', 'Produit 2', 70),
('REFA005', 'Produit 3', 30),
('REFA006', 'Produit 4', 55),
('REFA007', 'Produit 5', 199),
('REFA008', 'Produit 6', 66);



CREATE VIEW vue_commandes AS
SELECT reference_de_commande, produit 
FROM commandes;
