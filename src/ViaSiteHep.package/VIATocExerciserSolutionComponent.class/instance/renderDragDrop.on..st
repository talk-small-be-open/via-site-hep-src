rendering
renderDragDrop: aDragDropInput on: html
	| answerValue  |

	answerValue := exercise answerOf: aDragDropInput.

"	self renderHintSymbolOf: aDragDropInput on: html."

"	self renderCorrection: answerValue on: html."
	

	html span
		class: 'dragDropTarget solution';
		class: 'answerWasCorrect' if: answerValue isCorrect;
		class: 'answerWasWrong' if: answerValue isWrong;
		with: [
			aDragDropInput solutions do: [:each |
				html pillarString: each object.
"				self renderDragDropDraggable: each on: html"] separatedBy: [html span: ' / ' ]
		].