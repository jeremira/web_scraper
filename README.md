Une page root ('/') avec un formulaire pour entrer une url
(exemple: http://ogust-self-service.com/). Suite à la soumission du formulaire :

- on recupère en ruby le contenu de la page (url) saisie dans le formulaire.
- on enregistre ce contenu en base de données pour le sortir si on re-saisit cette meme url dans les 5 minutes (expiration)
- on affiche dans une iframe le contenu de la page que l'on a recuperée.


Une seconde page ('/pages') qui affiche les pages enregistrées (triées par ordre
alphabétique) avec leur date d'expiration et un lien pour voir la page dans un nouvel onglet.


Prévoir un menu avec les liens home et pages

## Ce que nous attendons de vous

- Soignez votre code, nous voulons du code propre, en anglais
- Mettez le code sur Github (ou autre) et donnez nous l'adresse du repo
- Utilisez Rails 5 uniquement (pas d'angular ou d'autres trucs dans le genre)
- Testez avec RSpec
- Versionnez dans git (messages de commit clairs et utiles, en anglais)
- Fournissez un readme avec les infos nécessaires pour faire tourner l'appli

Il est fortement conseillé de :

- Gérer les erreurs
- Mettre l'application en ligne (n'oubliez pas de nous fournir l'url)


test-technique.txt
Affichage de test-technique.txt en cours...
