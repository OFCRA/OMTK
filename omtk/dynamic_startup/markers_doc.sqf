if (("OMTK_MODULE_DYNAMIC_STARTUP" call BIS_fnc_getParamValue) == 1) then {
  player createDiaryRecord ["Diary", ["OMTK Helper: markers", "Supported marker's names:<br/><br>
  
  Spawns (once per side):<br/>
    'b_spawn': BLUEFOR spawn location<br/>
    'r_spawn': REDFOR spawn location<br/><br/>
    <br/>
  Respawns (as many as you want):<br/>
    'b_respawn': BLUEFOR respawn location(s)<br/>
    'r_respawn': REDFOR respawn location(s)<br/>
    <br/>
  Objectives (as many as you want): <br/>
    'cap_XX': with XX in {20|50|100|150|200}<br/>
    Disputed zone to capture, diameter = XX meters<br/>
    Points = diameter / 10 (100 m => 10 pts) <br/>
    <br/>
    'b_obj': American flag with action attached<br/>
    Points equal 3 per flag<br/>
    <br/>
    'r_obj': Russian flag with action attached<br/>
    Points equal 3 per flag
  "]];
};
