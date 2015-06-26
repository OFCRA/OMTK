# mission_toolkit

## G&eacute;n&eacute;ralit&eacute;s
Le mission_toolkit [OFCRA](http://ofcrav2.org) permet de construire les missions officielles de l'OFCRA, en rendant la tache facile:

1. Cr&eacute;ez une mission vide avec l'&eacute;diteur du jeu (_pensez &agrave; lancer Arma3 avec tous les add-on du repo officiel OFCRA avec ArmaSync_)
2. Copiez/collez le contenu du mission_pack dans le r&eacute;pertoire de la mission (_g&eacute;n&eacute;ralement dans _My Documents\Arma 3\missions\nom_de_votre_mission_) &agrave; c&ocirc;t&eacute; du fichier mission.sqm
3. Bravo ! Votre mission embarque toutes les fonctionnalit&eacute;s officielles de l'OFCRA !
4. Retournez dans l'&eacute;diteur pour ajouter simplement vos groupes d'infanterie et v&eacute;hicules sans vous soucier de leur mat&eacute;riel, ainsi que vos objectifs (voir la section dedi&eacute;e du module __objectives__)


## Les modules

Le mission_pack se compose de diff&eacute;rents modules ind&eacute;pendants:

* IA_skill: configure les capacit&eacute;s de l'IA (vers le bas)
* difficulty_check: leve une alerte si la mission n'a pas ete lanc&eacute;e en difficult&eacute; _elite_
* gears_infantry: &eacute;quipe tous les slots humains automatiquement, avec la configuration modifiable du module
* gears_vehicles: &eacute;quipe tous les types de v&eacute;hicules automatiquement, avec la configuration modifiable du module
* objectives_setter: permet de d&eacute;finir les objectifs de la mission, avec notamment le tableau des scores final affichant le status des joueurs et les r&eacute;sultats des diff&eacute;rents objectifs d&eacute;finis.
* time_line: permet de d&eacute;finir une dur&eacute;e maximale de mission, et de param&eacute;trer les diff&eacute;rentes alertes de temps restant 

## Gestion des messages

Les modules du mission_pack indiquent les erreurs g&eacute;n&eacute;ralement dans 2 endroits:

* System chat: des messages importants sont affich&eacute;s directement dans le chat in-game, afin que le cr&eacute;ateur ou les joueurs aient connaissance de ces informations.
* fichier de log .rpt Arma3: dans C:\Users\_username_\AppData\Local\Arma3\ figurent les logs provenant du mission_pack, formatt&eacute;es de la facon suivante: 
__[OFCRA] {ERROR|WARNING|INFO}: contenu_du_message__


