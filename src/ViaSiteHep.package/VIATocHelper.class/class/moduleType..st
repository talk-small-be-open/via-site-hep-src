as yet unclassified
moduleType: aModule
	| first |
	"R = Regular
	P = Palloncini
	V = Vocabolario"

	first := aModule indexCode first.
	
	^ self moduleTypeFromFirstIndex: first