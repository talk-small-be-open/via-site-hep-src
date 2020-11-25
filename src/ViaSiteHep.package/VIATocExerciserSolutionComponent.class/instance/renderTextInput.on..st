rendering
renderTextInput: aPlaceholder on: html
	| answerValue solutionMaxSize |

	answerValue := exercise answerOf: aPlaceholder.
	solutionMaxSize := (aPlaceholder solutions collect: [:each | each size])
		ifEmpty: [5]
		ifNotEmpty: [:c | c max max: 3].

	aPlaceholder isBlankIsSolution ifTrue: [ solutionMaxSize := 0.5 ].
	
	html textInput
		class: 'clozeTextPlaceholder solution';
		class: 'answerWasCorrect' if: answerValue isCorrect;
		class: 'answerWasWrong' if: answerValue isWrong;
		class: 'markedAsEmpty' if: answerValue isExplicitBlank;
		class: 'blankIsSolution' if: aPlaceholder isBlankIsSolution;
		style: ('width: ', solutionMaxSize greaseString, 'em;');
		value: (MCLPlatform joinCollection: aPlaceholder solutions delimiter: ' / ').