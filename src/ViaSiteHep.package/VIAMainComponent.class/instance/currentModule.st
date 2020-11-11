as yet unclassified
currentModule
	^ self isExercising ifTrue: [self coreComponent currentModule] ifFalse: [ nil ]