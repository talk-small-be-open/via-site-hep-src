icons
iconProgressFromPercent: anInteger
	anInteger = 0 ifTrue: [ ^ self ].
	anInteger < 50 ifTrue: [ self iconProgress: 1. ^ self].
	anInteger < 90 ifTrue: [ self iconProgress: 2. ^ self].
	
	self iconProgress: 3.