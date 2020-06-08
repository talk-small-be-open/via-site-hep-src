actions
showModule: aModule
	self show: ((VIAModuleExerciser smartFromModule: aModule)
		addBackButton;
		yourself).