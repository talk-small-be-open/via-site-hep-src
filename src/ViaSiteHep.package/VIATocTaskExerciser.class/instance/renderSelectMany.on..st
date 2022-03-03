rendering-visitor
renderSelectMany: aSelectManyInput on: html
	| answerValue regionDiv answerCollection  choicesGroups columnsCount buttonId |

	answerValue := exercise answerOf: aSelectManyInput.

	choicesGroups := exercise propertyAt: #orderedChoicesGroups of: aSelectManyInput.
	columnsCount := choicesGroups size.

	answerCollection := answerValue value.

	regionDiv := html div
		class: 'selectMany';
		class: aSelectManyInput uiStyle;
		id: html nextId;
		yourself.

	regionDiv with: [

		html hintBox: 'selectMany:seeTutorial'.

		self renderHintSymbolOf: aSelectManyInput on: html.
		html ukGrid class: ('uk-grid-small uk-child-width-1-', columnsCount asString); with: [
			choicesGroups do: [ :choices |
				| subColumnsCount |
				subColumnsCount := aSelectManyInput columns ifNil: [
					self calculateSubcolumnsFromCol: columnsCount choices: choices
				].
			
				html div: [
					html ukGrid
						class: ('uk-grid-small uk-child-width-1-', subColumnsCount asString);
						with: [
							choices do: [:choice |
								| isCorrect isChozen isWrongChoice isCorrectChoice |
								isChozen := answerCollection includes: choice.

								aSelectManyInput isCheckable ifTrue: [
									isCorrect := aSelectManyInput isSolution: choice.
									isWrongChoice := (isChozen and: [isCorrect not]).
									isCorrectChoice := (isChozen and: [isCorrect])].

								html div: [
									html label
										id: (buttonId := html nextId);
										class: 'active' if: isChozen;
										class: 'bigButton';
										class: 'wrong' if: (self isca: isWrongChoice);
										class: 'correct' if: (self isca: isCorrectChoice);
										with: [
											html span: [
												| cb |
												cb := html checkbox
													style: 'display: none';
													onTrue: [answerCollection addIfNotPresent: choice]
													onFalse: [answerCollection remove: choice ifAbsent: []];
													class: 'selectManyInput';
													onClick: ('return selectmany_preventTooManyChecks("',
														regionDiv id, '","',
														buttonId, '",',
														aSelectManyInput solutions size greaseString,
														',"', ('exerciser:selectMany:tooManyChecks' t),'")');
													value: isChozen.

												html iconChecked class: 'checkedIcon'.
												choice acceptRenderingVisitor: self on: html.
												"self renderTextualAnswer: choice brick: aSelectManyInput on: html."

												"html pillarString: choice"].
										].
	]]]]]]]