rendering-visitor
renderSelectMany: aSelectManyInput on: html
	| answerValue regionDiv  answerCollection  choicesGroups columnsCount buttonId |

	answerValue := exercise answerOf: aSelectManyInput.
"TODO	orderedChoices := exercise propertyAt: #orderedChoices of: aSelectManyInput."
	choicesGroups := aSelectManyInput choicesGroups copy.
	columnsCount := choicesGroups size.

	answerCollection := answerValue value.

	regionDiv := html div
		class: 'selectMany';
		id: html nextId;
		yourself.

	regionDiv with: [
		self renderHintSymbolOf: aSelectManyInput on: html.
		html ukGrid class: ('uk-grid-small uk-child-width-1-', columnsCount asString); with: [
			choicesGroups do: [ :choices |
				html div: [
					html ukGrid class: ('uk-grid-small uk-child-width-1-1'); with: [
						choices do: [:choice |
							| isCorrect isChozen isWrongChoice |
							isChozen := answerCollection includes: choice.
							isCorrect := aSelectManyInput isSolution: choice.
							isWrongChoice := (isChozen and: [isCorrect not]).

							html div: [
								html label
									id: (buttonId := html nextId);
									class: 'active' if: isChozen;
									class: 'bigButton';
									class: 'wrong' if: (self isca: isWrongChoice);
									class: 'correct' if: (self isca: (isChozen and: [isCorrect]));
									with: [
										html span: [
											self ifca: isWrongChoice t: [
												html span class: 'wrongIcon'; with: [html iconWrong].
											].
											html pillarString: choice].
										html checkbox
											style: 'display: none';
"											onClick: ((html jQuery id: buttonId) toggleClass: 'active');"
											onClick: ('return selectmany_preventTooManyChecks("',
												regionDiv id, '","',
												buttonId, '",',
												aSelectManyInput solutions size greaseString,
												',"', ('exerciser:selectMany:tooManyChecks' t),'")');

											onTrue: [answerCollection addIfNotPresent: choice]
											onFalse: [answerCollection remove: choice ifAbsent: []];
											class: 'selectManyInput';
											value: isChozen.
									].
		]]]]]].
			
		self renderCorrection: answerValue showWrong: false on: html]