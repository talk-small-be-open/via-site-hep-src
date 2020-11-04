as yet unclassified
testdriveTask: aTask module: aModule
	self coreComponent: (VIATocModuleExerciser testdrive: aModule task: aTask)
	
"	component := (VIATocTaskExerciser testdrive: aTask module: aModule).
	component addForm removeButtons.

	self coreComponent: component"