rendering-visitor
renderSelectOneDropdown: aSelectOneInput on: html
	| answerValue input orderedChoices id |

	answerValue := exercise answerOf: aSelectOneInput.
	orderedChoices := exercise propertyAt: #orderedChoices of: aSelectOneInput.

	id := html nextId.
	input := html select
		id: id;
		list: orderedChoices;
		labels: [ :each | self labelForTextualAnswer: each brick: aSelectOneInput ];
		beOptional;
		class: 'uk-select uk-width-auto selectOneInput';
		class: 'wrong' if: (self isca: answerValue isWrong);
		class: 'correct' if: (self isca: answerValue isCorrect);
		class: aSelectOneInput uiStyle;
		callback: [:value | answerValue value: value ].

	self isHideWrongAnswers
		ifTrue: [
			answerValue ifNotWrong: [
				input selected: answerValue value]]
		ifFalse: [input selected: answerValue value].
			

	self renderCorrection: answerValue on: html.

	self renderHintSymbolOf: aSelectOneInput on: html.