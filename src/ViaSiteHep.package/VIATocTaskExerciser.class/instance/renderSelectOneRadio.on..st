rendering-visitor
renderSelectOneRadio: aSelectOneInput on: html
	| div answerValue input choicesGroups columnsCount buttonId |

	answerValue := exercise answerOf: aSelectOneInput.
	choicesGroups := exercise propertyAt: #orderedChoicesGroups of: aSelectOneInput.
	columnsCount := choicesGroups size.

	self renderHintSymbolOf: aSelectOneInput on: html.

	div := html div.
	div
		ensureId;
		class: 'selectOneInput';
		class: aSelectOneInput uiStyle.

	div with: [
		html hintBox: 'selectOne:seeTutorial'.

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
				html ukGrid class: ('uk-grid-small uk-child-width-1-', columnsCount asString); with: [
					choicesGroups do: [ :choices |
						| subColumnsCount |

						subColumnsCount := aSelectOneInput columns ifNil: [
							self calculateSubcolumnsFromCol: columnsCount choices: choices
						].

						html div: [
							html ukGrid
								class: ('uk-grid-small uk-child-width-1-', subColumnsCount asString);
								with: [
									choices do: [:choice |
										| isChozen isWrongChoice isCorrectChoice |
										isChozen := answerValue value = choice.
										isWrongChoice := (isChozen and: [answerValue isWrong]).
										isCorrectChoice := (isChozen and: [answerValue isCorrect]).
										html div: [
											html label
												id: (buttonId := html nextId);
												class: 'active' if: isChozen;
												class: 'bigButton';
												class: 'wrong' if: (self isca: isWrongChoice);
												class: 'correct' if: (self isca: isCorrectChoice);
												with: [
													html span: [
														rg radioButton
															style: 'display: none';
															onClick: (
																(((html jQuery id: div id) find: '.bigButton') removeClass: 'active'),
																(html jQuery id: buttonId) addClass: 'active');
															value: choice.
														html iconChecked class: 'checkedIcon'.
														choice acceptRenderingVisitor: self on: html.
														"self renderTextualAnswer: choice brick: aSelectOneInput on: html."
														"html pillarString: choice"]
													].
		]]]]]]]]