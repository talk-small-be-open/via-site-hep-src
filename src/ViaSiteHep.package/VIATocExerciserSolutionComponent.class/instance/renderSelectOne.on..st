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
				html iconSolution.
				self renderTextualAnswer: each brick: aSelectOneInput on: html.
			] separatedBy: [ html space "html text: ' / '" ]
		].