doNothing = {
	// ne fait rien
};

hideDocuments = {
	_target = missionNamespace getVariable ["documents" , objNull];
	deleteVehicle _target;
	_target = missionNamespace getVariable ["caisson" , objNull];
	deleteVehicle _target;	
};