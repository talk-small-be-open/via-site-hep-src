actions
openModule: aModule

	self currentPortfolio addModule: aModule.

	self coreComponentWithBackButton: (VIATocModuleExerciser fromModule: aModule).