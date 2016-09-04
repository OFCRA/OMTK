# IA_SKILLS MODULE

## Data card

| FIELD                   | VALUE
|-------------------------|-------------
| folder name             | ia_skills
| last modification date  | 2015-01-01
| Ojective                | make IA look like humans
| Default                 | enabled
| Extra Parameters        | yes

## Description

Even if we try to avoid, we -sometimes- have to use IA units to balance teams.  
This module aims at making IA more human-like units, by lowering their skills for detection and others capabilities.

Another feature is to protect human from IA return fire: in case of team-kill, IA units automatically engage the author. It is artificially disabled by adding a huge Rating to each human player. 

## Mission Parameters

#### IA_skills module:

* enabled (default)
* disabled

### Extra Parameters

#### File *omtk\\ia_skills\\main.sqf*

IA Skill values to be set directly into the file   
Check [Arma 3 wiki](https://community.bistudio.com/wiki/AI_Sub-skills) for explanations.
