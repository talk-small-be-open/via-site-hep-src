as yet unclassified
toccamoduleCssOfToccaunit: anInteger
	| number |
	number := (self toccamoduleFromToccaunit: anInteger).
	number = 0 ifTrue: [ ^ 'toccamoduleExtras' ].
	
	^ 'toccamodule', number asString