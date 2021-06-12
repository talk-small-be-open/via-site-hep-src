as yet unclassified
currentModule
	^ self isExercising ifTrue: [self activeCoreComponent module] ifFalse: [ nil ]