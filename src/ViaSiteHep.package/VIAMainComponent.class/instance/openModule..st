actions
openModule: aModule
	| exerciser |

	self currentPortfolio addModule: aModule.

	exerciser := (VIATocModuleExerciser fromModule: aModule).
	exerciser previousModule: aModule previousByIndexCode.
	exerciser nextModule: aModule nextByIndexCode.

	self coreComponent: exerciser