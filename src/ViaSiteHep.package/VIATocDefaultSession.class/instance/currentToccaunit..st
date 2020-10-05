as yet unclassified
currentToccaunit: aNumber
	| unit |
	unit := aNumber asInteger.
	
	unit ifNotNil: [
		self user propertyAt: #preferredToccaunit put: unit ].