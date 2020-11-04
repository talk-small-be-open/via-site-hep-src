as yet unclassified
testdriveTask: aTask
	| taskExerciser |
	taskExerciser := (self exerciserOfTask: aTask).
	exerciserComponents := Array with: taskExerciser.

	self gotoExerciser: taskExerciser