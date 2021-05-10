rendering
renderButtonsOn: html
	self task isCheckable
	ifFalse: [
		self task isSaveable ifTrue: [ 
			self renderSaveOnlyButtonsOn: html]
	]
	ifTrue: [
		html div class: 'buttons'; with: [
			self isFirstTake
				ifTrue: [self renderFirstTakeButtonsOn: html]
				ifFalse: [
					self isCorrect
						ifTrue: [self renderSolutionButtonsOn: html]
						ifFalse: [self renderNonFirstTakeButtonsOn: html]]]]