as yet unclassified
moduleTypeFromFirstIndex: anObject
	"R = Regular
	P = Palloncini
	V = Vocabolario"
	anObject isNumber ifTrue: [ ^ 'R' ].
	^ anObject