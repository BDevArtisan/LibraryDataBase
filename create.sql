DROP TABLE IF EXISTS Adherent;
DROP TABLE IF EXISTS Ressource;
DROP TABLE IF EXISTS Film;
DROP TABLE IF EXISTS OeuvreMusicale;
DROP TABLE IF EXISTS Livre;
DROP TABLE IF EXISTS Exemplaire;
DROP TABLE IF EXISTS MembrePersonnel;
DROP TABLE IF EXISTS Retard;
DROP TABLE IF EXISTS Degradation;
DROP TABLE IF EXISTS Pret;


CREATE TABLE Adherent (
    Login VARCHAR PRIMARY KEY,
    Nom VARCHAR NOT NULL,
    Prenom VARCHAR NOT NULL,
    Adresse VARCHAR NOT NULL,
    Mail VARCHAR NOT NULL,
    Mot_De_Passe VARCHAR NOT NULL,
    Telephone VARCHAR NOT NULL,
    Date_naissance DATE NOT NULL,
    Actif BOOLEAN NOT NULL DEFAULT TRUE,
    Date_Adhesion DATE NOT NULL,
    Nombre_Prets INTEGER NOT NULL,
    Blackliste BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE Ressource (
    Code VARCHAR PRIMARY KEY,
    Titre VARCHAR NOT NULL,
    Date_apparition DATE NOT NULL,
    Editeur VARCHAR NOT NULL,
    Genre VARCHAR NOT NULL,
    Code_Classification VARCHAR NOT NULL
);

CREATE TABLE Film (
    code VARCHAR not null,
    id_film VARCHAR UNIQUE,
    longueur INT NOT NULL,
    langue VARCHAR NOT NULL,
    synopsis VARCHAR NOT NULL,
    PRIMARY KEY (code),
    FOREIGN KEY (code) REFERENCES Ressource(Code),
    joue_par JSON NOT NULL,
    realise_par JSON NOT NULL
);

CREATE TABLE OeuvreMusicale (
    code VARCHAR,
    id_oeuvremusicale VARCHAR NOT NULL UNIQUE,
    longueur INT NOT NULL,
    composeePar JSON NOT NULL,
    interpreteePar JSON NOT NULL,
    PRIMARY KEY (code),
    FOREIGN KEY (code) REFERENCES Ressource (Code)
);

CREATE TABLE Livre (
    code VARCHAR,
    ecritPar JSON NOT NULL,
    isbn VARCHAR NOT NULL UNIQUE,
    resume VARCHAR NOT NULL,
    langue VARCHAR NOT NULL,
    PRIMARY KEY (code),
    FOREIGN KEY (code) REFERENCES Ressource (Code)
);

CREATE TABLE Exemplaire (
    code_Ressource VARCHAR,
    Etat VARCHAR,
    PRIMARY KEY (code_Ressource, Etat),
    FOREIGN KEY (code_Ressource) REFERENCES Ressource (Code)
);

CREATE TABLE MembrePersonnel (
    Login VARCHAR PRIMARY KEY,
    Nom VARCHAR NOT NULL,
    Prenom VARCHAR NOT NULL,
    Adresse VARCHAR NOT NULL,
    Mail VARCHAR NOT NULL,
    Mot_De_Passe VARCHAR NOT NULL
);

CREATE TABLE Retard (
    id_Retard VARCHAR PRIMARY KEY,
    Adherent VARCHAR REFERENCES Adherent(Login),
    Exemplaire_code VARCHAR NOT NULL,
    Exemplaire_etat VARCHAR NOT NULL,
    Suspendu_jusqua DATE NOT NULL,
    FOREIGN KEY (Exemplaire_code, Exemplaire_etat) REFERENCES Exemplaire(code_ressource, etat)
);

CREATE TABLE Degradation (
    id_Degradation VARCHAR PRIMARY KEY,
    Adherent VARCHAR REFERENCES Adherent(Login) NOT NULL,
    Exemplaire_code VARCHAR NOT NULL,
    Exemplaire_etat VARCHAR NOT NULL,
    rembourse BOOLEAN NOT NULL,
    FOREIGN KEY (Exemplaire_code, Exemplaire_etat) REFERENCES Exemplaire(code_ressource, etat)
);

CREATE TABLE Pret(
    id_adherent VARCHAR NOT NULL,
    code_ressource VARCHAR NOT NULL,
    etat VARCHAR NOT NULL,
    date DATE NOT NULL,
    date_fin DATE DEFAULT NULL,
    PRIMARY KEY (id_adherent, code_ressource, etat, date),
    FOREIGN KEY (id_adherent) REFERENCES Adherent(login),
    FOREIGN KEY (code_ressource, etat) REFERENCES Exemplaire(code_ressource, etat)
);
