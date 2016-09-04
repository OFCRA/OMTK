# TACTICAL_PARADROP MODULE

## Data card

| FIELD                   | VALUE
|-------------------------|-------------
| folder name             | tactical_paradrop
| last modification date  | 2016-09-01
| Ojective                | provide paradrop at the begining of the mission
| Default                 | disabled
| Extra Parameters        | yes

## Description

This module provide an easy way to provide paradrop to one or both sides.
This module relies on ACEmod self interactive menu: all players in enabled sides have a new action that can be done once only, and inside a configurable time-frame (X minutes after the mission start). It creates a steerable parachute on the player position (just aside). It is up to the players to put it in their back ([BackpackOnChest mod](http://www.armaholic.com/page.php?id=28837) is a good idea if you want to keep your initial backpack). Then the player has to open the map, and left-clic on it. The action will teleport him on that location and at the specified altitude. Don't forget to grab you parachute first !

Once done, the action disappears from the ACE menu. If the player tries to paradrop out of the timeframe, he won't be teleported, and a *hint* message will be displayed: 

      too late to jump !

## Mission Parameters

#### tactical_paradrop module:

* disabled (default)
* BLUEFOR only
* REDFOR only
* BLUEFOR + REDFOR

#### tactical_paradrop altitude:

* 300 m
* 500 m
* 1000 m
* 1500 m
* 2500 m
* 3000 m (default)
* 4000 m
* 5000 m

#### tactical_paradrop timeframe:

* 1 min
* 2 min
* 3 min (default)
* 5 min
* 10 min
* 15 min
* 20 min
* 30 min
* unlimited

### Extra Parameters

#### File *init.sqf*

You can optionally define zones restrictions for both sides:

    OMTK_TP_BLUEFOR_RESTRICTIONS = [
        //[x_coordinate, y_coordinate, radius_in_m],
    ];

    OMTK_TP_REDFOR_RESTRICTIONS = [
        //[x_coordinate, y_coordinate, radius_in_m],
    ];

 If restrictions are defined (array not empty), the authorized area is the sum of the circles. When the player clicks outside, there is a message to warn him:

    Unathorized area, jump somewhere else !

and the player is allowed to try again (if still in the timeframe).
