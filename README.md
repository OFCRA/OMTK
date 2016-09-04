# OMTK: OFCRA Mission ToolKit

The mission toolkit created by [OFCRA](http://ofcrav2.org) aims at designing PvP missions with the smallest effort as possible. The initial goal was to build a tool for OFCRA missions only, but it can suit any PvP or TvT mission maker needs. Everything is set up for a specific TvT gameplay (the one we OFCRA use in all of our missions): no respawn hardcore missions in complex scenario.

L'OMTK ne dépend pas de *@CBA_A3*, mais de *@ACEmod* (menu self-ACE pour le paradrop, la fin du warmup etc...)

## Features

There are harcoded settings and modular ones.

### Settings

Lots of settings come from description.ext/init.sqf/onPlayerKilled.sqf and so on.

Here is the exhaustive list of features:

* respawn in [EG Spectator](https://community.bistudio.com/wiki/EG_Spectator_Mode) after the first death.
* chat disabling on {Global/Direct/System} channels
* DebugConsole disabled
* Set terrain mesh to the highest quality

### Modules

* 3rd-parties: contient les modules et scripts externes à l'OMTK
* difficulty_check: lève une alerte si la mission n'a pas été lancée en difficulté _elite_
* IA_skill: rabaisse les capacités (skill) de l'IA
* infantry_loadouts: équipe tous les slots automatiquement (exceptions possibles)
* kill_logger: logs tous les hits de la partie dans le fichier RPT du serveur
* launch_mode: permet d'initialiser la partie avec des comportements différents
  * normal: la partie est lancée normalement (après le warmup) pour une durée fixe, avec affichage du tableau des scores
  * teleport: idéal pour une campagne, gére le multi-spawn et les OB dynamiquement avec des actions sur drapeaux
  * markers: idéal pour les trainings et missions simples, téléportes les unités et créer des objectifs en se basant sur des markers
  * test: idéal pour que le public teste sa connexion au server avant les parties publiques, partie illimitée, sans tableau des scores, avec toutes les unités indestructibles
  * briefing: idéal pour une soirée déploiement, 
* radio_lock: empêche la récupération de radios ennemies
* score_board: permet de définir les objectifs de la mission, avec notamment le tableau des scores final affichant le status des joueurs et les résultats des différents objectifs définis.
* tactical_paradrop: permet d'activer un saut en chute libre pour les débuts de parties 
* vehicles_cargos: charge les cargos de tous les types de véhicules automatiquement
* warm_up: permet de définir un phase de préparation avant le démarrage de la partie de 30s à 30 min., avec impossibilité de sortir de plus de 150 m. de son lieu de spawn (sinon téléporté de force)

## Messages

Les modules du mission_pack indiquent les erreurs généralement dans 2 endroits:

* System chat: des messages importants sont affichés directement dans le chat in-game, afin que le créateur ou les joueurs aient connaissance de ces informations.
* fichier de log .rpt Arma3: dans C:\Users\_username_\AppData\Local\Arma3\ figurent les logs provenant du mission_pack, formattées de la facon suivante:
__[OMTK] {ERROR|WARNING|INFO}: contenu_du_message__

## Usage


1. Create an empty mission with Eden editor (_load all the required @mods_) and save it in not-binarized format
2. Download the [lastest OMTK version on github](https://github.com/OFCRA/OMTK/archive/master.zip).
3. Unzip the archive content inside your empty mission folder (_should be something like My Documents\Arma 3\missions\your_mission_name_) aside the file mission.sqm
3. Edit description.ext file
4. Retournez dans l'éditeur pour ajouter simplement vos groupes d'infanterie et véhicules sans vous soucier de leur matériel, ainsi que vos objectifs (voir la section dediée du module __score_board__)
5. Exécutez la commande suivante pour équiper vos infanteries à l'intérieur de votre fichier mission.sqm:

        omtk-loadouts.exe loadouts add 

Votre mission est prête !


## How to contribute
