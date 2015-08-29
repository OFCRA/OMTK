# MODULE GEARS_INFANTRY

Ce module permet de d&eacute;finir de mani&egrave;re automatis&eacute;e l'&eacute;quippement complet (le _"stuff"_) des unit&eacute;s d'infanterie jouable par les humains.
L'id&eacute;e est d'&eacute;viter de devoir le sp&eacute;cifier pour chacune des infanteries dans le champ __"init"__ de l'&eacute;diteur pr&eacute;vu &agrave; cet effet.

Au lancement de la mission, toutes les unit&eacute;s sont mises en slip, puis r&eacute;-&eacute;quipp&eacute;es en appliquant les contenus d&eacute;finis dans les fichiers redfor.sqf et bluefor.sqf.

Les fonctions qui &eacute;quippent les deux camps sont r&eacute;parties dans 2 fichiers: _redfor.sqf_ et _bluefor.sqf_, puis par classe d'infanterie dans chaque fichier.

Il y a une fonction qui s'applique a tout le camp, puis des specifiques aux differentes classes:

* rifleman
* anti_tank
* anti_tank_assitant
* grenadier
* marksman
* squad_leader
* ...

__TO BE CONTINUED__

Pour les comportements ne s'appliquant qu'&agrave; un nombre r&eacute;duit de personnages, vous devrez toujours passer par le champ __"init"__ des personnages concern&eacute;s, 
et ajouter le nom du personnage dans la liste d'exception.
