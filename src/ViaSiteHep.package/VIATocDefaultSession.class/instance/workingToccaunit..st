as yet unclassified
workingToccaunit: anObject
	anObject isNumber ifTrue: [
		| number |
		number := anObject asInteger.
		workingToccaunit := number.
	
		self user propertyAt: #preferredToccaunit put: number ]