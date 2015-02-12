// Pour tous les joueurs du camp BLUEFOR:
ofcra_fnc_bluefor_camp = {
	private ["_unit"];
	_unit = _this select 0;
		
	_unit addVest "rhsusf_iotv_ocp_rifleman";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
};



// Pour tous les medics du camp BLUEFOR:
ofcra_fnc_bluefor_medic = {
	private ["_unit"];
	_unit = _this select 0;
		
	_unit addVest "rhsusf_iotv_ocp_rifleman";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
	_unit addItem "cse_bandage_basic";
};



medic_classes = ["rhsusf_army_ocp_medic", "rhsusf_army_ucp_medic", "B_medic_F", "B_G_medic_F"];
rifleman_classes = ["rhsusf_army_ocp_rifleman", "rhsusf_army_ocp_riflemanl", "rhsusf_army_ocp_riflemanat", "rhsusf_army_ocp_rifleman_m16", "rhsusf_army_ucp_rifleman", "rhsusf_army_ucp_riflemanl", "rhsusf_army_ucp_riflemanat", "rhsusf_army_ucp_rifleman_m16", "B_Soldier_F", "B_Soldier_lite_F", "B_G_Soldier_F", "B_G_Soldier_lite_F", "b_g_soldier_unarmed_f"];
grenadier_classes = ["rhsusf_army_ocp_grenadier", "rhsusf_army_ucp_grenadier", "B_Soldier_GL_F", "B_G_Soldier_GL_F"];


ofcra_fnc_set_bluefor_gears = {
	private ["_unit", "_class"];
	_unit  = _this select 0;
	_class = _this select 1;
	
	[_unit] call ofcra_fnc_redfor_camp;
	if (_class in rifleman_classes)  then { [_unit] call ofcra_fnc_bluefor_rifleman; return; };
	if (_class in medic_classes)     then { [_unit] call ofcra_fnc_bluefor_medic; return; };
	if (_class in grenadier_classes) then { [_unit] call ofcra_fnc_bluefor_grenadier; return; };
	_log_line = "Classe inconnue '" + _class + "', gears BLUEFOR par default";
  	systemChat _log_line;
};