CREATE DATABASE exo_connect;
USE exo_connect;

CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(70),
    prenom VARCHAR(70),
    date_de_naissance DATE,
    sexe VARCHAR(10),
    addresse TEXT,
    cp VARCHAR(20),
    ville VARCHAR(70),
    pays_iso_3 VARCHAR(3),
    FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3)
);

CREATE TABLE pays (
    iso_3 VARCHAR(3) PRIMARY KEY,
    nom VARCHAR(70) NOT NULL,
    iso_2 VARCHAR(2) NOT NULL,
    nationalite VARCHAR(50)
);

CREATE TABLE telephone (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_contact INT,
    numero VARCHAR(50) NOT NULL UNIQUE,
    type TINYINT,
    FOREIGN KEY (id_contact) REFERENCES contacts(id)
);
INSERT INTO pays (iso_3, nom, iso_2, nationalite) VALUES
('FRA', 'France', 'FR', 'Française'),
('USA', 'États-Unis', 'US', 'Américaine'),
('DEU', 'Allemagne', 'DE', 'Allemande'),
('ESP', 'Espagne', 'ES', 'Espagnole'),
('ITA', 'Italie', 'IT', 'Italienne'),
('CAN', 'Canada', 'CA', 'Canadienne'),
('BRA', 'Brésil', 'BR', 'Brésilienne'),
('JPN', 'Japon', 'JP', 'Japonaise'),
('CHN', 'Chine', 'CN', 'Chinoise'),
('IND', 'Inde', 'IN', 'Indienne');

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, addresse, cp, ville, pays_iso_3) VALUES
('Dupont', 'Jean', '1990-01-15', 'Homme', '12 Rue de Paris', '75001', 'Paris', 'FRA'),
('Smith', 'John', '1985-07-20', 'Homme', '1200 Broadway', '10001', 'New York', 'USA'),
('Müller', 'Anna', '1993-03-25', 'Femme', 'Hauptstraße 5', '10115', 'Berlin', 'DEU'),
('Garcia', 'Maria', '1988-11-30', 'Femme', 'Calle Mayor 20', '28013', 'Madrid', 'ESP'),
('Rossi', 'Luigi', '1995-06-10', 'Homme', 'Via Roma 50', '00184', 'Rome', 'ITA'),
('Tremblay', 'Sophie', '2000-02-18', 'Femme', '123 Rue Sainte-Catherine', 'H2X 1Z5', 'Montréal', 'CAN'),
('Silva', 'Carlos', '1992-05-12', 'Homme', 'Rua Augusta 300', '01045-900', 'São Paulo', 'BRA'),
('Yamada', 'Akiko', '1998-08-22', 'Femme', '3-5-2 Ginza', '104-0061', 'Tokyo', 'JPN'),
('Li', 'Wei', '1997-12-15', 'Homme', '123 Chaoyang Rd', '100020', 'Beijing', 'CHN'),
('Patel', 'Ananya', '1996-09-05', 'Femme', 'B-2 Chandni Chowk', '110006', 'Delhi', 'IND');

INSERT INTO telephone (id_contact, numero, type) VALUES
(1, '0123456789', 1),
(1, '0987654321', 2),
(2, '1234567890', 1),
(3, '9876543210', 1),
(4, '0246813579', 1),
(5, '1357924680', 2),
(6, '1472583690', 1),
(7, '2583691470', 2),
(8, '3691472580', 1),
(9, '1112223334', 1),
(10, '4445556667', 2);
