actions
start
	"If there is only one task, then we open it"
	model tasksCount = 1 ifTrue: [
		self gotoFirstExerciser ]