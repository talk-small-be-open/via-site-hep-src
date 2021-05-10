as yet unclassified
toccamoduleFromToccaunit: anObject
	"OPTIMIZE: Palloncini und Vocabolario sind eher eigene toccamoduls als P und V, statt 0"
	anObject isNumber ifFalse: [ ^ anObject "^0" ].
	
	^ (anObject + 1) // 2