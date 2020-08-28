as yet unclassified
toccamoduleFromToccaunit: anInteger
	anInteger isNumber ifFalse: [ ^0 ].
	
	^ (anInteger + 1) // 2