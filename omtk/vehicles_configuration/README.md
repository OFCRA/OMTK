# VEHICLES_CONFIGURATION MODULE

## Data card

| FIELD                   | VALUE
|-------------------------|-------------
| folder name             | vehicles_configuration
| last modification date  | 2015-01-01
| Ojective                | fill-in cargo and tune vehicles
| Default                 | enabled
| Extra Parameters        | yes

## Description

This modules is mainly in charge of filling the cargos of vehicles at mission startup, base on the category of the vehicle. A vehicle category (ex: car, truck, transport helicopter, etc...) is a list of Arma3 classes. A vehicle is "identified" when his class belongs to one category. By default, an unidentified vehicle cargo will be cleared. Unindentified vehicle classes will be logged in *.RPT* file to help the mission maker to identify the unstuffed vehicles:

    HH:MM:SS [OMTK] WARN uknown side for vehicle 'rhsusf_m1a1aimwd_usarmy'

If you want to customize manually (in the editor, using the *init* field) for one specific set of vehicles, you can do that adding the following parameter in the field: 

    this setVariable["omtk_skip", 1];


The module can also disable the TI equipements onboard (question of gameplay).

## Mission Parameters

#### vehicles_cargos module

* enabled (default)
* disabled

When enabled, will clear then fill in all identified vehicles cargos

#### vehicles TIEquipments disabling

* enabled (default)
* disabled

When enabled, will disable TI for all vehicles.

#### unkown vehicles cargo emptying

* enabled (default)
* disabled

When enabled, will clear the cargo of unidentified vehicles (good to remove Arma 3 stuff when using mods like RHSmod or CUP)

### Extra Parameters

#### File *omtk\\vehicles_cargos\\{blue|red}for_categories.sqf*

These files describes the categories for both sides. Feel free to modify to register the vehicles classes that you use in your mission.

#### File *omtk\\vehicles_cargos\\{blue|red}for_cargos.sqf*

These files describes what to load in cargos for each category. Feel free to modify as you want.
