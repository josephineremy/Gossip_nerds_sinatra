## Présentation 
Bienvenue dans la première page web codée en Ruby par Joséphine. Sur celle-ci, vous pourrez découvrir quelques ragots collectés avant que vous arriviez. Vous pourrez en modifier certains (via l'option "Rends-toi vers la page du potin" >> "Edite le potin") mais aussi en créer (depuis le lien en bas de la page d'accueil "Veux-tu créer un potin?")

## Les pages à explorer
-La page d'accueil: Vous aurez un message de bienvenue mais aussi tous les gossips qui ont été écrits avant que vous arriviez, l'option d'accès aux gossips, ainsi que l'option d'en créer un (--> http://localhost:4567/)<br/>
-La page de création: Vous pourrez créer un gossip en renseignant simplement votre pseudo et le potin que vous voulez raconter (--> http://localhost:4567/gossips/new/)<br/>
-La page individuelle de gossip: Vous serez orienté vers la page individuelle du gossip sélectionné et vous pourrez en fin de page modifier le gossip si jamais vous considérez qu'il n'est pas véridique (--> http://localhost:4567/gossips/:id/)<br/>
-La page d'édition: Vous pourrez juste mettre votre alias d'éditeur et la modification du potin que vous avez sélectionné. (--> http://localhost:4567/gossips/:id/edit)

## Améliorations
Il y a bien évidemment des améliorations de design. J'avoue ne pas avoir passé beaucoup de temps à mettre en forme la page Gossip Nerds. J'ai aussi abandonné quand il fallut mettre des commentaires sur les gossips...

## Instructions
$ bundle install
$ shotgun -p 4567
Copier-coller http://localhost:4567/ dans votre barre de recherche et laissez-vous guider.
