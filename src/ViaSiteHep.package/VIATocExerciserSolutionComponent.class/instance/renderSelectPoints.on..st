rendering
renderSelectPoints: aSelectPointsInput on: html
	| answerValue  |

	answerValue := exercise answerOf: aSelectPointsInput.

	html div
		class: 'selectPointsInput';
		class: aSelectPointsInput uiStyle;
		with: [
			html pillarString: (aSelectPointsInput labelForChoice: answerValue value)]