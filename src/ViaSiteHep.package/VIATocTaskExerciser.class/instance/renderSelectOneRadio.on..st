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
						html div: [
							html ukGrid class: ('uk-grid-small uk-child-width-1-1'); with: [
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
											class: 'correct' if: (self isca: (isChozen and: [isCorrect]));
											with: [
												html span: [
													rg radioButton
														style: 'display: none';
														onClick: (
															(((html jQuery id: div id) find: '.bigButton') removeClass: 'active'),
															(html jQuery id: buttonId) addClass: 'active');
														value: choice.
													self ifca: isWrongChoice t: [
														html span class: 'wrongIcon'; with: [html iconWrong]].
													self ifca: isCorrectChoice t: [
														html span class: 'correctIcon'; with: [html iconCorrect]].
													html pillarString: choice]].
		]]]]]]]].

"	self renderCorrection: answerValue showWrong: false on: html"