// Retire le thermique de tous les vehicules
diag_log "[OFCRA] INFO: setting vehicules gears ...";


{ _x disableTIEquipment true;} foreach vehicles;

diag_log "[OFCRA] INFO: vehicules gears done.";
