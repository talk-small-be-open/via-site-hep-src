as yet unclassified
toccamoduleCssOfToccaunit: anInteger
	| number |
	number := (self toccamoduleFromToccaunit: anInteger).

	"TODO: Probably obsoloete? We never get 0"
	number = 0 ifTrue: [ ^ 'toccamoduleExtras' ].
	
	^ 'toccamodule', number asString