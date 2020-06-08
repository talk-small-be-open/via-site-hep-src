rendering
renderButtonsOn: html
	html div class: 'buttons'; with: [
		self isFirstTake
			ifTrue: [self renderFirstTakeButtonsOn: html]
			ifFalse: [
				self isCorrect
					ifTrue: [self renderSolutionButtonsOn: html]
					ifFalse: [self renderNonFirstTakeButtonsOn: html]]]