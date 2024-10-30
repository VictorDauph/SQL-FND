//Tout supprimer pour l'énoncé

CREATE TABLE utilisateurs(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100),
    age INT DEFAULT 0,
    date_inscription TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );