as yet unclassified
buildExerciseComponentForTask: aTask
	| taskIndex taskExerciser |
	taskIndex := model tasks indexOf: aTask.

	taskExerciser := VIATocExerciserPrintComponent exercise: (moduleExerciseGSRENAME exerciseForTask: aTask).
	
	exerciserComponents
		at: taskIndex
		put: taskExerciser