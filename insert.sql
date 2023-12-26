DELETE FROM Adherent;
DELETE FROM Ressource;
DELETE FROM Film;
DELETE FROM OeuvreMusicale;
DELETE FROM Livre;
DELETE FROM Exemplaire;
DELETE FROM MembrePersonnel;
DELETE FROM Retard;
DELETE FROM Degradation;
DELETE FROM Pret;

INSERT INTO Adherent (Login, Nom, Prenom, Adresse, Mail, Mot_De_Passe, Telephone, Date_Naissance, Actif, Date_Adhesion, Nombre_Prets, Blackliste) VALUES ('cortypol', 'Corty', 'Pol', '9 rue de la Justice', 'pol.corty@etu.utc.fr', 'pol', '06666666', TO_DATE('17/12/2015', 'DD/MM/YYYY'), TRUE, TO_DATE('01/11/2022', 'DD/MM/YYYY'), 0, FALSE);

INSERT INTO Adherent (Login, Nom, Prenom, Adresse, Mail, Mot_De_Passe, Telephone, Date_Naissance, Actif, Date_Adhesion, Nombre_Prets, Blackliste) VALUES ('nassim', 'Saidi', 'Nassim', '10 rue de la Justice', 'nassim.saidi@etu.utc.fr', 'nassim', '06666667', TO_DATE('11/12/2015', 'DD/MM/YYYY'), TRUE, TO_DATE('01/11/2022', 'DD/MM/YYYY'), 0, FALSE);

INSERT INTO MembrePersonnel (Login, Nom, Prenom, Adresse, Mail, Mot_De_Passe) VALUES ('admin', 'ad', 'min', '1 rue de la Justice', 'admin@bibli.fr', 'password');



INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('FGL001', 'Star Wars', TO_DATE('10/02/1986', 'DD/MM/YYYY'), 'LucasFilms', 'Science-Fiction', 'SF');

INSERT INTO Film (code, id_film, longueur, langue, synopsis, joue_par, realise_par) VALUES ('FGL001', 'GL001', 135, 'Français', 'Dans une galaxie lointaine, très lointaine...', 
'[
    {
        "id_contributeur": "hford",
        "nom": "Ford",
        "prenom": "Harrison",
        "date_naissance": "1956-02-17",
        "nationalite": "Américaine"
    }
]',
'[
    {
        "id_contributeur" : "glucas",
        "nom" : "Lucas",
        "prenom" : "Georges",
        "date_naissance" : "1959-12-17",
        "nationalite" : "Américaine"
    }
]'
);

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('FGL001', 'Neuf');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('FGL001', 'Bon');



INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('FDC001', 'La La Land', TO_DATE('25/01/2017', 'DD/MM/YYYY'), 'Summit Entertainment', 'Romance', 'RM');

INSERT INTO Film (code, id_film, longueur, langue, synopsis, joue_par, realise_par) VALUES ('FDC001', 'DC001', 96, 'Anglais', 'Log Angeles songs and beautiful love story.',
'[
    {
        "id_contributeur" : "rgosling",
        "nom" : "Gosling",
        "prenom" : "Ryan",
        "date_naissance" : "1980-02-12",
        "nationalite" : "Américaine"
    }
]',
'[
    {
        "id_contributeur" : "dchazelle",
        "nom" : "Chazelle",
        "prenom" : "Damien",
        "date_naissance" : "1969-12-02",
        "nationalite" : "Américaine"
    }
]');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('FDC001', 'Neuf');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('FDC001', 'Abimé');



INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('FCN001', 'Inception', TO_DATE('25/01/2010', 'DD/MM/YYYY'), 'Warner Bros', 'Science-Fiction', 'SF');

INSERT INTO Film (code, id_film, longueur, langue, synopsis, joue_par, realise_par) VALUES ('FCN001', 'CN001', 128, 'Français', 'Une épopée mystique dans le subconscient',
'[
    {
        "id_contributeur" : "ldicaprio",
        "nom" : "DiCaprio",
        "prenom" : "Leonardo",
        "date_naissance" : "1974-11-11",
        "nationalite" : "Américaine"
    }
]',
'[
    {
        "id_contributeur" : "cnolan",
        "nom" : "Nolan",
        "prenom" : "Christopher",
        "date_naissance" : "1969-11-09",
        "nationalite" : "Américaine"
    }
]');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('FCN001', 'Neuf');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('FCN001', 'Bon');




/* OeuvreMusicale */
INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('MAV001', 'Les 4 saisons', TO_DATE('03/02/1686', 'DD/MM/YYYY'), 'Antonio Vivaldi', 'Classique', 'CL');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('MAV001', 'Bon');

INSERT INTO OeuvreMusicale (code, id_oeuvremusicale, longueur, composeePar, interpreteePar)
VALUES ('MAV001', 'AV001', 79, 
    '[
        {
             "id_contributeur": "avivaldi",
            "nom": "Vivaldi",
            "prenom": "Antonio",
            "date_naissance": "1659-12-03",
            "nationalite": "Italienne"
        }
    ]',
    '[
        {
             "id_contributeur": "npaganini",
            "nom": "Paganini",
            "prenom": "Nicolo",
            "date_naissance": "1929-11-17",
            "nationalite": "Américaine"
        }
    ]'
);



INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('MID001', 'Mercury - Act 1', TO_DATE('01/06/2022', 'DD/MM/YYYY'), 'Imagine Dragons', 'Pop', 'PP');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('MID001', 'Bon');

INSERT INTO OeuvreMusicale (code, id_oeuvremusicale, longueur, composeePar, interpreteePar)
VALUES ('MID001', 'ID001', 185, 
    '[
        {
             "id_contributeur": "dreynolds",
            "nom": "Reynolds",
            "prenom": "Dan",
            "date_naissance": "1679-01-03",
            "nationalite": "Américaine"
        }
    ]',
    '[
        {
             "id_contributeur": "wsermon",
            "nom": "Sermon",
            "prenom": "Wayne",
            "date_naissance": "1976-10-17",
            "nationalite": "Américaine"
        }
    ]'
);



INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('MRA001', 'Umbrella', TO_DATE('01/06/2008', 'DD/MM/YYYY'), 'Rihanna', 'Pop', 'PP');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('MRA001', 'Neuf');

INSERT INTO OeuvreMusicale (code, id_oeuvremusicale, longueur, composeePar, interpreteePar)
VALUES ('MRA001', 'RA001', 4,
    '[
        {
             "id_contributeur": "rfenty",
            "nom": "Fenty",
            "prenom": "Rihanna",
            "date_naissance": "1988-02-20",
            "nationalite": "Barbadian"
        }
    ]',
    '[
        {
             "id_contributeur": "jz",
            "nom": "Z",
            "prenom": "Jay",
            "date_naissance": "1981-10-03",
            "nationalite": "Américaine"
        }
    ]'
);




INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('LGM001', 'Game of Thrones', TO_DATE('15/08/2006', 'DD/MM/YYYY'), 'Georges Martins', 'Fantasy', 'FT');

INSERT INTO Livre (code, ecritPar, isbn, resume, langue) VALUES ('LGM001','[{
     "id_contributeur": "gmartins",
"nom": "Martins",
"prenom": "Georges",
"date_naissance": "17/12/1959",
"nationalite": "Américaine"
}]', '12039487549', 'Plots and dragons to conquer the iron throne.', 'Anglais');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('LGM001', 'Neuf');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('LGM001', 'Abîmé');



INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('LJR001', 'Harry Potter 1', TO_DATE('26/06/1997', 'DD/MM/YYYY'), 'J.K. Rowling', 'Fantasy', 'FT');

INSERT INTO Livre (code, ecritPar, isbn, resume, langue) VALUES ('LJR001', '[{
     "id_contributeur": "jrowling",
"nom": "Rowling",
"prenom": "J.K.",
"date_naissance": "07/12/1959",
"nationalite": "Anglaise"
}]', '39546327549', 'Harry et son histoire dans le monde des sorciers.', 'Français');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('LJR001', 'Bon');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('LJR001', 'Abîmé');



INSERT INTO Ressource (Code, Titre, Date_apparition, Editeur, Genre, Code_Classification) VALUES ('LAC001', 'Hercule Poireau', TO_DATE('26/01/1927', 'DD/MM/YYYY'), 'Agatha Christie', 'Policier', 'PL');

INSERT INTO Livre (code, ecritPar, isbn, resume, langue) VALUES ('LAC001', '[{
     "id_contributeur": "achristie",
"nom": "Christie",
"prenom": "Agatha",
"date_naissance": "07/02/1909",
"nationalite": "britanique"
}]', '3954632192', 'Fameux détective sur une enquête', 'Français');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('LAC001', 'Neuf');

INSERT INTO Exemplaire (code_Ressource, Etat) VALUES ('LAC001', 'Abîmé');





INSERT INTO Pret (id_adherent, code_ressource, etat, date, date_fin) VALUES ('cortypol', 'LGM001', 'Neuf', TO_DATE('02/11/2022', 'DD/MM/YYYY'), TO_DATE('10/11/2022', 'DD/MM/YYYY'));

INSERT INTO Pret (id_adherent, code_ressource, etat, date) VALUES ('cortypol', 'MAV001', 'Bon', TO_DATE('02/11/2022', 'DD/MM/YYYY'));

INSERT INTO Pret (id_adherent, code_ressource, etat, date, date_fin) VALUES ('nassim', 'FGL001', 'Neuf', TO_DATE('21/10/2022', 'DD/MM/YYYY'), TO_DATE('12/11/2022', 'DD/MM/YYYY'));

INSERT INTO Pret (id_adherent, code_ressource, etat, date, date_fin) VALUES ('nassim', 'MID001', 'Bon', TO_DATE('03/11/2022', 'DD/MM/YYYY'), TO_DATE('23/10/2022', 'DD/MM/YYYY'));

INSERT INTO Pret (id_adherent, code_ressource, etat, date, date_fin) VALUES ('cortypol', 'LJR001', 'Abîmé', TO_DATE('03/11/2022', 'DD/MM/YYYY'), TO_DATE('23/10/2022', 'DD/MM/YYYY'));

INSERT INTO Retard (id_retard, Adherent, Exemplaire_code, Exemplaire_etat, Suspendu_jusqua) VALUES ('r1', 'nassim', 'FGL001', 'Neuf', TO_DATE('22/11/2022', 'DD/MM/YYYY'));

INSERT INTO Degradation (id_Degradation, Adherent, Exemplaire_code, Exemplaire_etat, rembourse) VALUES ('d1', 'cortypol', 'LGM001', 'Neuf', FALSE);
