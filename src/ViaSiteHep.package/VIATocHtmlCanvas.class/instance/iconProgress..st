icons
iconProgress: anInteger
	anInteger = 1 ifTrue: [ ^ self iconProgress1 ].
	anInteger = 2 ifTrue: [ ^ self iconProgress2 ].
	anInteger = 3 ifTrue: [ ^ self iconProgress3 ].
