accessing
selectedToccaunit: anObject
	selectedToccaunit := anObject asInteger.
	
	self currentUser propertyAt: #preferredToccaunit put: selectedToccaunit.
