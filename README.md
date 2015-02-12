# mission_pack

## G&eacute;neralites
Le mission_pack [OFCRA](http://ofcrav2.org) permet de construire les missions officielles de l'OFCRA, en rendant la tache facile:

1. Creez une mission vide avec l'editeur du jeu (_pensez a lancer Arma3 avec tous les add-on du repo officiel OFCRA avec ArmaSync_)
2. Copiez/collez le contenu du mission_pack dans le repertoire de la mission (_generalement dans Documents\Arma 3\missions\nom_de_votre_mission_) a cote du fichier mission.sqm
3. Bravo ! Votre mission embarque toutes les fonctionnalites officielles de l'OFCRA !
4. Retournez dans l'editeur pour ajouter simplement vos groupes d'infanterie et vehicules sans vous soucier de leur materiel, ainsi que vos objectifs (voir la section dediee du module __objectives__)


## Les modules

Le mission_pack se compose de differents modules independants:

* IA_skill: configure les capacites de l'IA (vers le bas)
* difficulty_check: leve une alerte si la mission n'a pas ete lance en difficulte _elite_
* gears_infantry: equipe tous les slots humains automatiquement, avec la configuration modifiable du module
* gears_vehicules: equipe tous les types de vehicules automatiquement, avec la configuration modifiable du module
* objectives_setter: permet de definir les objectifs de la mission, avec notamment le tableau des scores final affichant le status des joueurs et les resultats des differents objectifs definis.
* time_line: permet de definir une duree maximale de mission, et de parametrer les differents alertes de temps restant 

## Gestion des messages

Les modules du mission_pack indique les erreurs generalement dans 2 endroits:

* System chat: des messages importants sont affiches directement dans le chat in-game, afin que le createur ou les joueurs aient connaissance de ces informations.
* fichier de log .rpt Arma3: dans C:\Users\_username_\AppData\Local\Arma3\ figurent un ensemble de log provenant du mission_pack, formattees de la facon suivante: 
__[OFCRA] {ERROR|WARNING|INFO}: contenu_du_message__


