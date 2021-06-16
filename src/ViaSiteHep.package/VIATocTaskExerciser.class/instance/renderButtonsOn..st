rendering
renderButtonsOn: html
	self task isSelfCheckMode ifTrue: [
		html div class: 'exerciserMainButtons'; with: [
			self renderSaveOnlyButtonsOn: html ]
	].
	self task isCheckable ifTrue: [
		html div class: 'exerciserMainButtons'; with: [
			self isFirstTake
				ifTrue: [self renderFirstTakeButtonsOn: html]
				ifFalse: [
					self isCorrect
						ifTrue: [self renderSolutionButtonsOn: html]
						ifFalse: [self renderNonFirstTakeButtonsOn: html]]]]