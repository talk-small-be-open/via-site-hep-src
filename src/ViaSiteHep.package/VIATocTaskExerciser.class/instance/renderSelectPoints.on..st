rendering-visitor
renderSelectPoints: aSelectPointsInput on: html
	| answerValue  |

	answerValue := exercise answerOf: aSelectPointsInput.

	html div
		class: 'selectPointsInput';
		class: aSelectPointsInput uiStyle;
		with: [

		html radioGroup
			callback: [:value | answerValue value: value];
			selected: answerValue value;
			with: [:rg |
				aSelectPointsInput choices do: [:each |
					html div: [
						html label: [
							rg radioButton
								value: each.
							html pillarString: (aSelectPointsInput labelForChoice: each)]
	]]]].

	self renderHintSymbolOf: aSelectPointsInput on: html.