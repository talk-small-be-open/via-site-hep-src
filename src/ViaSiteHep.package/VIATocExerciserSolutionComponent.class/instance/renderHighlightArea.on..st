rendering
renderHighlightArea: aHighlightArea on: html
	|  answerHolder  |

	answerHolder := exerciseGSRENAME answerOf: aHighlightArea.

	html span
		class: 'highlightArea solution';
		class: 'answerWasCorrect' if: answerHolder isCorrect;
		class: 'answerWasWrong' if: answerHolder isWrong;
		with: aHighlightArea text.