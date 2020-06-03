actions
gotoNextOrFinish
	| nextTaskExerciser |
	nextTaskExerciser := (exerciserComponents after: currentExerciser ifAbsent: [self finish. ^self]).

	self gotoExerciser: nextTaskExerciser