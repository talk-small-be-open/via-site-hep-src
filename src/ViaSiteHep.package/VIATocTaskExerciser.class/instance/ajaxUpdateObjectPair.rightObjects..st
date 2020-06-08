ajax
ajaxUpdateObjectPair: anObjectPair rightObjects: aCollection
	| answer dropped others |
	answer := exercise answerOf: anObjectPair.

	dropped := aCollection first.

	others := (aCollection size > 1)
		ifTrue: [aCollection allButFirst]
		ifFalse: [#()].

	answer value: dropped.
	exercise answer: #leftOvers of: anObjectPair put: others asOrderedCollection.

	"Entfernen überall anders"
	(anObjectPair mapPairsTaskBrick pairInputs copyWithout: anObjectPair) do: [:each |
		answer := (exercise answerOf: each).
		
		answer value = dropped ifTrue: [answer beEmpty].
		(exercise answer: #leftOvers of: each) value ifNotBlank: [:col | col remove: dropped ifAbsent: []].
	]