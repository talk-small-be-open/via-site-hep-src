rendering-visitor
renderSelectOneRadio: aSelectOneInput on: html
	| div answerValue input orderedChoices |

	answerValue := exercise answerOf: aSelectOneInput.
	orderedChoices := exercise propertyAt: #orderedChoices of: aSelectOneInput.

	self renderHintSymbolOf: aSelectOneInput on: html.

	div := html div.
	div 
		class: 'selectOneInput'.
"		class: 'wrong' if: answerValue isWrong;
		class: 'correct' if: answerValue isCorrect."

	div with: [
		input := html radioGroup
			callback: [:value | answerValue value: value];
			yourself.

		self isHideWrongAnswers
			ifTrue: [
				answerValue ifNotWrong: [
					input selected: answerValue value]]
			ifFalse: [
				input selected: answerValue value].

		input
			with: [:rg |
				orderedChoices ifNotBlank: [
					orderedChoices do: [:choice |
						| isChozen isWrongChoice isCorrect |
						isChozen := answerValue value = choice.
						isCorrect := answerValue isCorrect.
						isWrongChoice := (isChozen and: [isCorrect not]).

						html div: [
							html label
								class: 'wrong' if: (self isca: isWrongChoice);
								class: 'correct' if: (self isca: (isChozen and: [isCorrect]));
								with: [
									self ifca: isWrongChoice t: [
										html span class: 'wrongIcon'; with: [html iconWrong].
									].
									rg radioButton value: choice.
									html space.
									html span: [
										html pillarString: choice]].
	]]]]].

	self renderCorrection: answerValue showWrong: false on: html