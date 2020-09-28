actions
openModule: aModule remember: aBoolean
	| exerciser |

	aBoolean ifTrue: [
		(VIATocHelper isRegularModule: aModule)
			ifTrue: [
				self currentPortfolio
					addModule: aModule;
					lastOpenedModule: aModule ]
			ifFalse: [
				(VIATocHelper isVocabolarioModule: aModule) ifTrue: [ 
					lastOpenedVocabolario := aModule
				].
				(VIATocHelper isPallonciniModule: aModule) ifTrue: [ 
					lastOpenedPalloncini := aModule
				].
	]].

	exerciser := (VIATocModuleExerciser fromModule: aModule).
	exerciser previousModule: aModule previousByIndexCode.
	exerciser nextModule: aModule nextByIndexCode.

	self coreComponent: exerciser