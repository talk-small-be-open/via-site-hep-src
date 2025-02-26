rendering
renderTextListInput: aTextListInput on: html
	| answerValue answerCollection |

	answerValue := exercise answerOf: aTextListInput.
	answerCollection := answerValue value.

	html div
		class: 'textListInput';
		class: aTextListInput uiStyle;
		with: [
			html div class: 'textInputs'; with: [
				aTextListInput solutions withIndexDo: [:text :index |
					| isCorrect |
					isCorrect := answerCollection includes: text.

					html div: [
"						html span class: 'lineNumber'; with: index asString."
						html span
							class: 'correct' if: isCorrect;
							with: text.
					]]].
		]