rendering
renderSelectOne: aSelectOneInput on: html
	| answerValue choice |
	
	answerValue := exercise answerOf: aSelectOneInput.

	choice := answerValue value.
	
	html span
		class: 'solution';
		class: 'answerWasCorrect' if: answerValue isCorrect;
		class: 'answerWasWrong' if: answerValue isWrong;
		with: [
			aSelectOneInput solutions do: [:each |
				html iconSolution; space.
				html text: each
			] separatedBy: [html text: ' / ' ]
		].


"	html div with: [
		aSelectOneInput choices do: [:choice |
			html label
				class: 'solution';
				class: ((answerValue value = choice)
					ifTrue: ['answerWasCorrect']
					ifFalse: ['answerWasWrong']);	
				with: [
					(aSelectOneInput solutions includes: choice)
						ifTrue: [html iconCorrect]
						ifFalse: [html iconWrong].
					html space.
					html span: choice].
			html break.
			].
 ]"