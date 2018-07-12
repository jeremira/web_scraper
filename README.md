s## Écrire une application Rails

Test pour les routes
  resources : scraper
Routes : root_page => new
            create update show
        /pages => index

Model :
 Scraper
  web_url uniq
  content
  last_updated_at

Method to overwrite content : update content si moins de 5min sinon super
default 404 content


Controller :
  new : classic stuff, url required
  create : find or create : open modal with show content
                unic broken error
                update content and save
  index : list all page AZ + expiration date + link to open modal

Views

Add menu Home | Pages

Update readme doc

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
