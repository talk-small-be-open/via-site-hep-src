icons
iconDurationTag: aDurationTag
	| d |
	aDurationTag ifNil: [^self].

	d := aDurationTag duration.
	d = 1 ifTrue: [ ^ self iconDuration1 ].
	d = 2 ifTrue: [ ^ self iconDuration2 ].
	d = 3 ifTrue: [ ^ self iconDuration3 ].
	d = 4 ifTrue: [ ^ self iconDuration4 ].
	d = 5 ifTrue: [ ^ self iconDuration5 ].
	d = 6 ifTrue: [ ^ self iconDuration6 ].

"NOT nice either:	self perform: (#iconDuration, aDurationTag duration asString)"