as yet unclassified
buildExerciseComponentForTask: aTask
	| exercise |
	exercise := (moduleExercise exerciseForTask: aTask).
	^ VIATocTeacherViewTaskExerciser exercise: exercise