as yet unclassified
exerciserOfTask: aTask
	^ exerciserComponents detect: [ :each | each task = aTask ] ifNone: [ nil ]