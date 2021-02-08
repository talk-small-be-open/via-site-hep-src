actions
removeModuleExercise: aModuleExercise
	(self confirmYesNo: 'myPortfolio:removeModule?') ifTrue: [
		self currentPortfolio removeModuleExercise: aModuleExercise.
		self refresh]