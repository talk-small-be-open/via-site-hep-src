rendering
renderTextInput: aPlaceholder on: html
	|  clozeInput answerValue solutionMaxSize |

	answerValue := exercise answerOf: aPlaceholder.
	solutionMaxSize := (aPlaceholder solutions collect: [:each | each size])
		ifEmpty: [5]
		ifNotEmpty: [:c | c max max: 3].


	clozeInput := html textInput
		class: 'clozeTextPlaceholder solution';
		class: 'answerWasCorrect' if: answerValue isCorrect;
		class: 'answerWasWrong' if: answerValue isWrong;
		class: 'markedAsEmpty' if: answerValue isExplicitBlank;
		style: ('width: ', solutionMaxSize greaseString, 'em;');
		value: (MCLPlatform joinCollection: aPlaceholder solutions delimiter: ' / ').