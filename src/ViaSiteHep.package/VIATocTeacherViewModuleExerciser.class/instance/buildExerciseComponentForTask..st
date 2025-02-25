as yet unclassified
buildExerciseComponentForTask: aTask
"	| taskIndex taskExerciser |
	taskIndex := model tasks indexOf: aTask.

	taskExerciser := VIATocExerciserPrintComponent exercise: (moduleExercise exerciseForTask: aTask).
	
	exerciserComponents
		at: taskIndex
		put: taskExerciser.
		
	^ taskExerciser"
	^ (super buildExerciseComponentForTask: aTask)
		preventHtmlFormSubmission;
		beOpen;
		yourself