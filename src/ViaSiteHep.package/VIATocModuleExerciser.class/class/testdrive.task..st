as yet unclassified
testdrive: aModule task: aTask
	| instance |
	"Factory for Testing!"

	instance := (self model: aModule).
	
	aTask
		ifNotNil: [ instance testdriveTask: aTask ]
		ifNil: [ instance start ].
	
	^ instance