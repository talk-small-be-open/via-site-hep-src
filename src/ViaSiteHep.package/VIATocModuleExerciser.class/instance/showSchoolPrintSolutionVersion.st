actions
showSchoolPrintSolutionVersion
	| printer |
	printer := VIASchoolPrintSolutionModuleExerciser model: model.
	printer addBackButton.
	self show: printer