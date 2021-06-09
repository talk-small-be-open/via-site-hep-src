as yet unclassified
gotoTaskNumber: anInteger
	| task |
	task := self module taskAt: anInteger.
	task ifNotNil: [
		self gotoExerciser: (self exerciserOfTask: task)]