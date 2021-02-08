as yet unclassified
calculateSubcolumnsFromCol: aMainColInteger choices: aChoicesCollection

	| maxLength totalChars |
	maxLength := (aChoicesCollection max: [ :each | pillarLengthEstimator estimateString: each ]).

	"Min. 1 column and max 8 (UIkit)"
	"Total characters per browser line"
	"1000px = 100 chars. -> 15px per char"
	totalChars := self session viewportWidth // 15.
	
	^ (((totalChars // aMainColInteger) // (maxLength + 5))) min: 10 max: 1
