as yet unclassified
preferredToccaunit: aNumber
	| unit |
	unit := aNumber asInteger.
	
	unit ifNotNil: [
		self user propertyAt: #preferredToccaunit put: unit ].