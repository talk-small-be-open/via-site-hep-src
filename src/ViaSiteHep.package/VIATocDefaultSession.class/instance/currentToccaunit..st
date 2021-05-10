as yet unclassified
currentToccaunit: aNumberOrString
	currentToccaunit := aNumberOrString.
	
	aNumberOrString isNumber ifTrue: [
		self workingToccaunit: aNumberOrString asInteger ]