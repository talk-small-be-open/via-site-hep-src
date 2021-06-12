testing
isExercising
"	^ (self coreComponent isKindOf: VIATocModuleExerciser) or: ["
	^
	(self activeCoreComponent isKindOf: VIATocModuleExerciser) or: [ 
		self activeCoreComponent isKindOf: VIATaskExerciserBase ]
	
"OPTIMIZE: Maybe check also all visiblePresenters until the root?"