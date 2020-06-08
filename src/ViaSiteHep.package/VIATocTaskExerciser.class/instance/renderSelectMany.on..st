rendering-visitor
renderSelectMany: aSelectManyInput on: html
	| answerValue regionDiv  answerCollection orderedChoices |

	answerValue := exercise answerOf: aSelectManyInput.
	orderedChoices := exercise propertyAt: #orderedChoices of: aSelectManyInput.

	answerCollection := answerValue value.

	self renderHintSymbolOf: aSelectManyInput on: html.
	
	regionDiv := html div
		class: 'selectMany';
		id: html nextId;
		yourself.

	regionDiv with: [
		orderedChoices ifNotBlank: [:sc |
			sc do: [:choice |
				| isCorrect isChozen isWrongChoice |
				isChozen := answerCollection includes: choice.
				isCorrect := aSelectManyInput solutions includes: choice.
				isWrongChoice := (isChozen and: [isCorrect not]).

				html label
					class: 'bigButton';
					class: 'wrong' if: (self isca: isWrongChoice);
					class: 'correct' if: (self isca: (isChozen and: [isCorrect]));
					with: [
						self ifca: isWrongChoice t: [
							html span class: 'wrongIcon'; with: [html iconWrong].
						].
						html checkbox
							onClick: ('return selectmany_preventTooManyChecks("',
								regionDiv id,
								'",',
								aSelectManyInput solutions size greaseString,
								',"', ('exerciser:selectMany:tooManyChecks' t),'")');
							onTrue: [answerCollection addIfNotPresent: choice]
							onFalse: [answerCollection remove: choice ifAbsent: []];
							class: 'selectManyInput';
							value: (answerCollection includes: choice).
						html space.
						html span: [
							html pillarString: choice]].
				html break.
			]].
	
		self renderCorrection: answerValue showWrong: false on: html]