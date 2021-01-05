rendering-visitor
renderSelectOneRadio: aSelectOneInput on: html
	| div answerValue input choicesGroups columnsCount buttonId |

	answerValue := exercise answerOf: aSelectOneInput.
"	orderedChoices := exercise propertyAt: #orderedChoices of: aSelectOneInput."

	choicesGroups := aSelectOneInput choicesGroups copy.
	columnsCount := choicesGroups size.

	self renderHintSymbolOf: aSelectOneInput on: html.

	div := html div.
	div
		ensureId;
		class: 'selectOneInput'.

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
				html ukGrid class: ('uk-grid-small uk-child-width-1-', columnsCount asString); with: [
					choicesGroups do: [ :choices |
						| subColumnsCount |
						
						"Cheap solution: Calculate number of optimum column count, to distribute the items"
						"Problem: Length of text is sometimes too big, because of Pillar syntax overhead"
						subColumnsCount := aSelectOneInput columns ifNil: [
							(((50//columnsCount) - (choices max: [ :each | each size ])) // 10) max: 1 ].

						html div: [
							html ukGrid
								class: ('uk-grid-small uk-child-width-1-', subColumnsCount asString);
								class: ('uk-child-width-1-', (subColumnsCount*2) asString, '@l');
								with: [

									choices do: [:choice |

	"				orderedChoices ifNotBlank: [
							orderedChoices do: [:choice |"
										| isChozen isWrongChoice isCorrect isCorrectChoice |
										isChozen := answerValue value = choice.
										isCorrect := answerValue isCorrect.
										isWrongChoice := (isChozen and: [isCorrect not]).
										isCorrectChoice := (isChozen and: [isCorrect]).
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
	"													self ifca: isWrongChoice t: [
															html span class: 'wrongIcon'; with: [html iconWrong]].
														self ifca: isCorrectChoice t: [
															html span class: 'correctIcon'; with: [html iconCorrect]]."
														html iconChecked class: 'checkedIcon'.
														html pillarString: choice]
													].
		]]]]]]]].

"	self renderCorrection: answerValue showWrong: false on: html"