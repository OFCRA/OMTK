![OMTK logo](https://raw.githubusercontent.com/OFCRA/OMTK/master/omtk/wiki/img/logo_omtk.png)  
# OFCRA Mission ToolKit

The mission toolkit created by [OFCRA](http://ofcrav2.org) aims at designing PvP missions with the smallest effort as possible. The initial goal was to build a tool for OFCRA missions only, but it can suit any PvP or TvT mission maker needs. Everything is set up for a specific TvT gameplay (the one we OFCRA use in all of our missions): no respawn hardcore missions in complex scenario.

This toolkit also provides training capabilities, with respawn and other advanced features.

Dependencies: the OMTK relies on *@RHSmod* only, it is plain Arma 3 scripting (even no *@CBA_A3*), so stability can be comprimized by changes on the game itself or changes in @RHSmod classes.
 
 If you use *@ACEmod*, the OMTK is compatible and provide interaction via self-interaction menu for some features. Anyway, players can still interact via the default CommandMenu.


## Features

There are splitted into two different categories: harcoded settings and modules.

### Settings

Lots of settings come from description.ext/init.sqf/onPlayerKilled.sqf and so on.

Here is a non-exhaustive list of hardcoded settings:

* respawn in [EG Spectator](https://community.bistudio.com/wiki/EG_Spectator_Mode) after the first death.
* Chat disabling on {Global/Direct/System} channels
* DebugConsole disabled
* Set terrain mesh to the highest quality
* Respawn with initial loadout


### Modules

* 3rd-parties: put here all external scripts (currently not used)
* difficulty_check: print a warning message is launched in difficulty different from _elite_
* IA_skill: lower IA skill and prevent from backfire
* dynamic_startup: provides two modes to create dynamically the mission:  
  * markers: markers are drawn on the map during the briefing, and it generates dynamically spawns locations, and objectives
  * interactive: this usefull to bring flexibility inside a given scenario, sides can choose their spawn, and choose their vehicles (from lists prepared by the mission maker).
* kill_logger: logs every HIT or KILL event inside the .RPT file
* map_exploration: allow every player to teleport or paradrop via mouse clicks on the map, and spawn some vehicles aside themself to explore. Usefull for briefing makers.
* radio lock: prevent from radio stealing
* respawn_mode: defines how player life is handled
* score_board: create mission objectives and display results in a scoreboard after a given time.
* tactical_paradrop: allow players to paradrop at the begining of the mission
* vehicle_thermalimaging: disable/enable vehicles TI equipement
* warm_up: lock players at spawn for a limited time to let guys connect and/or brief

## Messages

OMTK loading is logged in the System chat. Every other logs are directly written to .RPT file. They look like:

__HH:MM:SS [OMTK] {ERROR|WARNING|INFO|CHEAT}: message_content__

## Usage


1. Create an empty mission with Eden editor (_load all the required @mods_) and save it in not-binarized format
2. Download the [lastest OMTK version on github](https://github.com/OFCRA/OMTK/archive/master.zip).
3. Unzip the archive content inside your empty mission folder (_should be something like My Documents\Arma 3\missions\your_mission_name_) aside the file mission.sqm
4. Edit the 4-first lines in description.ext file
5. Change the loadscreen.jpg as needed
6. Go back to editor to add your units, vehicles and others. To use loadouts, it is recommended to read [omtk-loadout documentation](https://github.com/OFCRA/OMTK/blob/master/omtk-loadouts/README.md).
7. Add your mission objectives. To use score_board module objectives, please read the [module documentation](https://github.com/OFCRA/OMTK/blob/master/omtk/score_board/README.md).
8. If you also plan to use the interactive mode of dynamic_startup module, [read it](https://github.com/OFCRA/OMTK/blob/master/omtk/dynamic_startup/README.md).
9. Delete folders .\omtk\wiki and 

Your mission is now ready to be tested and played !
You can right now use your unique mission .PBO for different usages: training with your team, briefing on a running server to plan your tactics altogether, and last but not least, PvP/TvT matches.

## Mission Parameters

Hereafter the parameters that you can customize in the lobby:

![Mission Parameters](https://raw.githubusercontent.com/OFCRA/OMTK/master/omtk/wiki/img/mission_parameters.png)

First-class parameters are the ones which impact the most the gameplay. You should take extra care with them before launching the mission. Default values in bold.

### Dynamic Startup

* **off**: the mission starts *normally* with no specific action required
* markers: wherever your current infantry units positions, whatever the objectives already defined, the startup will teleport units to markers and create capture zones and flags objectives reading markers that are drawn during the briefing on map, a few seconds before the mission start.
* interactive: the mission is not started immediately, but specific flags provides actions to players to teleport them to the spawn of their choice among a prepared list, and vehicles set is also dynamically choosen among mission markers proposals. Once both sides are ready, the mission keeps going.

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/dynamic_startup)  

### Map exploration

* **off**
* on: allow all players to teleport or paradrop via click on map, and provide vehicles to be spawn aside themselves. This is suitable for briefing only

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/map_exploration)  

### Respawn

* **no respawn**: one life, then spectator
* 3 s/30 s/1 min/1 min 30s/2 min/3 min (useful for trainings)
* immortal: all players are immortal (useful to let your invitees test the @mods and check that they can connect to your server)

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/respawn_mode)  

### Scoreboard

* off: neither objectives computation nor scoreboard display
* 15 min/30 min/45 min/1 h/1 h 15 min/1 h 30 min/1 h 45 min/**2 h**/2 h 15 min/2 h 30 min/2 h 45 min/3 h: mission duration, followed by scoreboard display on all clients

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/score_board)  

### Tactical paradrop 

* **off**
* BLUEFOR only/REDFOR only/BLUEFOR + REDFOR: allow given factions players to paradrop at the begining of the mission.

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/tactical_paradrop)  

### Warm-up

* off
* 30 s/1 min/1 min 30s/2 min/3 min/5 min/8 min/10 min/15 min/20 min/**30 min**/45 min/1 h: warm-up duration, can be long to allow teams to brief in-game before the real mission start.

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/warm_up)  

### Difficulty check

* off
* **on**: enable difficulty_module

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/difficulty_check)  

### IA skills

* off
* on: enable ia_skills module

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/ia_skills)  

### Kill logger

* off
* on: enable kill_logger module

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/kill_logger)  

### Radio lock

* off
* on: enable radio_lock module

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/radio_lock)  

### Tactical paradrop altitude 

* 300 m/500 m/1000 m/1500 m/2000 m/2500 m/**3000 m**/5000 m: altitude for tactical_paradrop module

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/tactical_paradrop)  

### Tactical paradrop: timeframe

* 1 min/2 min/3 min/5 min/10 min/15 min/20 min/30 min/unlimited: timeframe at mission start to use the tactical paradrop feature.

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/tactical_paradrop)  

### Vehicles thermal imaging

* **off**: disable TI equipment on all vehicles 
* on

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/vehicles_thermalimaging)  

### Warm-up: zone restriction

* 10 m/30 m/50 m/100 m/150 m/200 m/300 m/400 m/500 m/800 m/1000 m/2000 m: max. authorized distance for players walk around during the warm-up from their initial position.

[+info](https://github.com/OFCRA/OMTK/tree/master/omtk/warm_up)  

## How to contribute

1. Fork it on github
2. Create atomic Pull-requests
