# Justification du choix de transformation de l'héritage
La classe mère Ressource est abstraite, l'héritage n'est pas complet, et la classe mère a une association avec la classe Exemplaire.
La meilleure solution est donc de transformer cet héritage par référence.

La classe mère Utilisateur est abstraite et n'a pas d'associations, l'héritage n'est pas complet.
Donc la meilleure solution est un héritage par classes filles.

La classe mère abstraite Sanction possède deux associations sortantes vers Adherent et Exemplaire (c'est elle qui référence, mais elle n'est jamais référencée), alors la meilleure solution est l'héritage pas classes filles.
Etant donné que c'est un héritage exculisf, on a choisi d'ajouter id_retard comme clé artificielle de Retard et id_degradation pour Degradation à la place d'un id commun aux deux classes filles id_sanction.


# Relations
-> Tous les attributs sont NON NULL

Adherent(#login : String, nom : String, prenom : String, adresse : String, mail : String, mot_de_passe : String, telephone : String, date_naissance : Date, actif : bool, date_adhesion : Date, nombre_prets : int, blackliste : bool)

Retard(#id_retard : String, adherent => Adherent, Exemplaire_code => Exemplaire.code_ressource, Exemplaire_etat => Exemplaire.etat, suspendu_jusqua : Date)

Degradation(#id_degradiation : String, adherent => Adherent, Exemplaire_code => Exemplaire.code_ressource, Exemplaire_etat => Exemplaire.etat, rembourse : bool) 

MembrePersonnel(#login : String, nom : String, prenom : String, adresse : String, mail : String, mot_de_passe : String)

Ressource(#code : String, titre : String, date_apparition : Date, editeur : String, genre : String, code_classification : String)

Exemplaire(#code_ressource => Ressource, #etat : {neuf|bon|abime|perdu})

Pret(#id_adherent => Adherent, #code_ressource => Exemplaire, #etat => Exemplaire, #date : Date, duree : int)
- avec date LOCAL KEY

Film(#code => Ressource, id_film : String, longueur : int, langue : String, synopsis : String)
- avec id_film KEY
- avec PROJECTION(Film, code) UNION PROJECTION(OeuvreMusicale, code) UNION PROJECTION(Livre, code) = PROJECTION(Ressource, code)

OeuvreMusicale(#code => Ressource, id_oeuvremusicale : String, longueur : int)
- avec id_oeuvremusicale KEY

Livre(#code => Ressource, isbn : String, resume : String, langue : String)
- avec isbn KEY

Contributeur(#id_contributeur, nom : String, prenom : String, date_naissance : Date, nationnalite : String)

FilmRealise(#code => Film, #id_contributeur => Contributeur)
- avec PROJECTION(FilmRealise, id_contributeur) ⊂ PROJECTION(Contributeur, id_contributeur)

FilmJoue(#code => Film, #id_contributeur => Contributeur)
- avec PROJECTION(FilmJoue, id_contributeur) ⊂ PROJECTION(Contributeur, id_contributeur)

OeuvreMusicaleComposee(#code => OeuvreMusicale, #id_contributeur => Contributeur)
- avec PROJECTION(OeuvreMusicaleComposee, id_contributeur) ⊂ PROJECTION(Contributeur, id_contributeur)

OeuvreMusicaleInterpretee(#code => OeuvreMusicale, #id_contributeur => Contributeur)
- avec PROJECTION(OeuvreMusicaleInterpretee, id_contributeur) ⊂ PROJECTION(Contributeur, id_contributeur)

LivreEcrit(#code => Livre, #id_contributeur => Contributeur)
- avec PROJECTION(LivreEcrit, id_contributeur) ⊂ PROJECTION(Contributeur, id_contributeur)

