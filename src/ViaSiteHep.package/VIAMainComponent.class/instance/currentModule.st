as yet unclassified
currentModule
	^ self isExercising ifTrue: [self activeCoreComponent currentModule] ifFalse: [ nil ]