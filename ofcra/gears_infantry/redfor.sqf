// Pour tous les joueurs du camp REDFOR:
ofcra_fnc_redfor_camp = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit forceAddUniform "rhs_uniform_msv_emr";
	_unit addVest "rhsusf_iotv_ocp_rifleman";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_morphine";
	_unit addItemToUniform "cse_epinephrine";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "tf_microdagr";
	_unit linkItem "ItemRadio";
};



// Pour tous les medics du camp REDFOR:
ofcra_fnc_redfor_medic = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "cse_bandage_basic";
	_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
	_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
	_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
	_unit addHeadgear "rhs_6b27m";
	_unit addWeapon "rhs_weap_ak74m";
};

// Pour tous les grenadiers du camp REDFOR:
ofcra_fnc_redfor_grenadier = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit addWeapon "rhs_weap_ak74m_gp25"; 
	_unit addWeapon "rhs_weap_rshg2";
	
};

// Pour tous les riflemen du camp REDFOR:
ofcra_fnc_redfor_rifleman = {
	private ["_unit"];
	_unit = _this select 0;
	
	_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
	_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
	_unit addItemToUniform "rhs_30Rnd_545x39_7N10_AK";
	_unit addHeadgear "rhs_6b27m";
	_unit addWeapon "rhs_weap_ak74m";
};





// Classes definitions

medic_classes = ["rhs_msv_medic", "rhs_vdv_medic", "O_medic_F"];
rifleman_classes = ["rhs_msv_rifleman", "rhs_vdv_rifleman", "O_Soldier_F", "O_Soldier_lite_F", "o_soldier_unarmed_f"];
grenadier_classes = ["rhs_msv_grenadier", "rhs_msv_at", "rhs_msv_at", "rhs_vdv_grenadier", "rhs_vdv_at", "O_Soldier_GL_F"];


ofcra_fnc_set_redfor_gears = {
	private ["_unit", "_class"];
	_unit  = _this select 0;
	_class = _this select 1;
	
	[_unit] call ofcra_fnc_redfor_camp;
	if (_class in rifleman_classes)  then { [_unit] call ofcra_fnc_redfor_rifleman; return; };
	if (_class in medic_classes)     then { [_unit] call ofcra_fnc_redfor_medic; return; };
	if (_class in grenadier_classes) then { [_unit] call ofcra_fnc_redfor_grenadier; return; };
	_log_line = "Classe inconnue '" + _class + "', gears REDFOR par default";
  	systemChat _log_line;
};