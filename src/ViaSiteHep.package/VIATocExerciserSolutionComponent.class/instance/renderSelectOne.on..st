rendering
renderSelectOne: aSelectOneInput on: html
	| answerValue |
	
	answerValue := exercise answerOf: aSelectOneInput.

"	choice := answerValue value."
	
	html span
		class: 'selectOneInput solution';
		class: 'answerWasCorrect' if: answerValue isCorrect;
		class: 'answerWasWrong' if: answerValue isWrong;
		with: [
			html iconSolution.
			aSelectOneInput solutions do: [:each |
				each acceptRenderingVisitor: self on: html.
			] separatedBy: [ html text: ' | ' ]
		]