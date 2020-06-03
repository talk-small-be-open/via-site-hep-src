actions
showSchoolPrintVersion
	| printer |
	printer := VIASchoolPrintModuleExerciser model: model.
	printer addBackButton.
	self show: printer