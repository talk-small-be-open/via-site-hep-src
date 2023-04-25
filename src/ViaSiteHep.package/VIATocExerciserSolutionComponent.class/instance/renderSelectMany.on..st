rendering
renderSelectMany: aSelectManyInput on: html
	| answerValue answerCollection |

	answerValue := exercise answerOf: aSelectManyInput.
	answerCollection := answerValue value.
	
	html div with: [
		aSelectManyInput solutions do: [:each |
			html label
				class: 'solution';
				class: ((answerCollection includes: each)
					ifTrue: ['answerWasCorrect']
					ifFalse: ['answerWasWrong']);	
				with: [
					html iconSolution.
					html space.
					html span: [
"						self renderTextualAnswer: choice brick: aSelectManyInput on: html."
						each acceptRenderingVisitor: self on: html.
"						html pillarString: choice"]].
			html break.
			].

"		self renderCorrection: answerValue on: html"
	]