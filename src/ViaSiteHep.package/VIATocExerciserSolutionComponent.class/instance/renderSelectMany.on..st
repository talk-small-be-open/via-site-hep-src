rendering
renderSelectMany: aSelectManyInput on: html
	| answerValue answerCollection |

	answerValue := exercise answerOf: aSelectManyInput.
	answerCollection := answerValue value.
	
	html div with: [
		aSelectManyInput solutions do: [:choice |
			html label
				class: 'solution';
				class: ((answerCollection includes: choice)
					ifTrue: ['answerWasCorrect']
					ifFalse: ['answerWasWrong']);	
				with: [
					html iconCorrect.
					html space.
					html span: [
"						self renderTextualAnswer: choice brick: aSelectManyInput on: html."
						choice acceptRenderingVisitor: self on: html.
"						html pillarString: choice"]].
			html break.
			].

"		self renderCorrection: answerValue on: html"
	]