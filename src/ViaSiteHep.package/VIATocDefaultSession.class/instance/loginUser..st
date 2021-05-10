as yet unclassified
loginUser: aUser
	super loginUser: aUser.
	
	currentToccaunit := aUser propertyAt: #preferredToccaunit ifAbsent: [ 1 ].
	workingToccaunit := currentToccaunit.