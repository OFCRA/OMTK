# RADIO_LOCK MODULE

## Data card

| FIELD                   | VALUE
|-------------------------|-------------
| folder name             | radio_lock
| last modification date  | 2015-07-10
| Ojective                | prevent from stealing ennemy Short-Range & Long-Range TFAR radios
| Default                 | enabled
| Extra Parameters        | no

## Description

This module prevents ennemies from stealing TFAR radios.

Picked-up SR radios are simply deleted, and LR radios are dropped to the ground.   
Everybody has a SR radio, but LR radios are valuable and must remain available to the same-side players.

Stealing attempts are logged into the *.RPT* file:
 
HH:MM:SS [OMTK] CHEAT: '*pseudo*' has stolen SR ennemy radio '*tf_anprc152*'  
HH:MM:SS [OMTK] CHEAT: '*pseudo*' has stolen LR ennemy radio '*tf_mr3000*'  
 
## Parameters

### Mission Parameters

#### radio_lock module:
* enabled (default)
* disabled

### Extra Parameters

-
