as yet unclassified
currentModule
	^ self isExercising ifTrue: [coreComponent currentModule] ifFalse: [ nil ]