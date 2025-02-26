rendering-visitor
renderTextListInput: aTextListInput line: aString number: anInteger mainTagId: anIdString on: html
	| answerValue answerCollection typingAssisted isFixedLines isCorrect isWrong |

	answerValue := exercise answerOf: aTextListInput.
	answerCollection := answerValue value.
	typingAssisted := aTextListInput withTypingAssistant.
	isFixedLines := aTextListInput hasMaxSolutionsCount.
			
	aString ifNotBlank: [
		isCorrect := aTextListInput isSolution: aString.
		isWrong := isCorrect not ].

	html div
		class: 'textListLine';
		class: 'wrong' if: (self isca: isWrong);
		class: 'correct' if: (self isca: isCorrect);

		with: [
			| id jsSave input |
			isFixedLines ifTrue: [
				html span class: 'lineNumber'; with: anInteger asString ].

			input := html textInput
				noAuto;
				id: (id := html nextId);
				class: 'textInput';
				placeholder: '...';
"				class: 'wrong' if: (self isca: isWrong);
				class: 'correct' if: (self isca: isCorrect);"
				callback: [ :value |
					answerCollection at: anInteger put: (self sanitizeUserTextInput: value).
				];
				yourself.
			
			typingAssisted ifTrue: [
				"JS for locally saving the last focused cursor position"
				jsSave := ((html jQuery id: anIdString)
					dataAt: 'lastInputElement' put: (JSStream this);
					dataAt: 'lastPosition' put: (JSStream this access: 'selectionStart')
				).
				
				input
					onClick: jsSave;
					onKeyUp: jsSave.
			].

			input with: aString.

			html span
				class: 'clearLine';
				onClick: (((html jQuery id: id) value: '') triggerFocus parent removeClass: 'correct wrong');
				with: [ html iconRemove ]
		]