## Changelog

\+ feature added  
\- feature deleted  
~ feature modified  
@ bug fix  
!! security patch  


### V2.4.0 - 2016-12-14
\+ [tactical_paradrop] add timeslot delay parameter in init.sqf
\+ [dynamic_startup] a dedicated panel is now available to choose both spawn location and vehicles
\+ [score_board] FLAG objectives can now be set at mission start in the objectives table (init.sqf)
~ [tactical_paradrop] no more paradrop generated aside the unit on the paradrop ACE menu action (still for map exploration though)
~ [score_board] survivors in objectives are now restricted to players (no IA) whose life is below 0.975 (unconscious are not survivors anymore)

### V2.3.3 - 2016-09-28
~ [omtk-loadouts] upgrade omtk-loadouts.exe to v1.0.1
~ [omtk-loadouts] add all RHS vehicles in vehicle cargos definition
\+ [omtk-loadouts] add M-88 camo for REDFOR
\+ [omtk-loadouts] add yellow gorka camo for REDFOR
\+ [omtk-loadouts] add UCP camo for BLUEFOR
~ [omtk-loadouts] rename default BLUEFOR loadouts file to bluefor-loadouts-ocp.yml
~ [omtk-loadouts] rename default REDFOR loadouts file to redfor-loadouts-gorka-green.yml
~ [omtk-loadouts] change recon vanilla class to Recon Marksman for BLUEFOR and REDFOR
~ [omtk-loadouts] change tripod_turret_carrier vanilla class to Recon Scout for BLUEFOR and REDFOR
@ [omtk-loadouts] commented path to units in BLUEFOR and REDFOR infantry class files

### v2.3.2 - 2016-09-18
\+ add code snippets in customScripts.sqf
@ [dynamic_startup] fix helper text for markers

### v2.3.1 - 2016-09-13
\+ additional warm-up durations: 45 min and 1 h
~ improve README files
~ change default loadscreen.jpg
@ respawning units without their inital loadout fixed

### v2.3.0 - 2016-09-12
\+ [map_exploration] new module, formely _briefing_ mode in *launch_mode* module  
\+ [respawn_mode] new module to handle separately respawn configuration  
\+ [tactical_paradrop] zones restrictions implemented  
\- [vehicles_configuration] module removed, no more cargo scripting available  
\+ [vehicles_thermalimaging] module to enable/disable TI equipment  
\+ [dynamic_markers] new commandMenu to process markers ()
~ Switch to English  
~ Missions parameters: full refactoring  
~ Refactoring and cleaning of omtk-loadouts configuration folders and files  
~ [launch_mode] renamed to dynamic_startup, enlightened to support markers and interactive modes only.  
~ [score_board] default duration is provided by mission parameter, and can be overrided by *OMTK_SB_MISSION_DURATION_OVERRIDE* parameter in init.sqf  
~ custom_scripts.sqf cleaned  
@ [dynamic_startup] interactive mode loosing flag during teleport is fixed  

### v2.2.0 - 2016-08-07
\+ ajout du changelog  
\+ [tactical_paradrop] nouveau module de parachutage permettant de rendre possible pour chaque camp un saut en chute libre via action dans le menu ACE, avec limitation dans le temps et dans l'espace  
\+ EG Spectator: lancement du script vanilla https://community.bistudio.com/wiki/EG_Spectator_Mode pendant que les joueurs sont morts (avant respawn si respawn il y a comme pendant pour le mode training)  
\+ [vehicle_configuration] TIEquipements disabling is now a mission parameter  
\+ [vehicle_configuration] clearing cargo of unidentified vehicles is now a mission parameter  
~ [score_board] le bouton *quitter* devient *fermer* et ferme seulement le tableau des scores  
~ [launch_mode] le mode *test* rend tous les véhicules égalements invincibles  
~ [launch_mode] parachutage au lieu de téléportaion lors de clic gauche sur map en mode *briefing*  
~ [launch_mode] rename 'teleport' to 'campaign'  
~ [vehicle_configuration] former vehicle_cargos module has been renamed vehicle_configuration  
