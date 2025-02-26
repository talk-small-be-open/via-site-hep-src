rendering
renderButtonsOn: html

	"After save, before check. Hook for certain bricks to cleanup, beautify input, etc."
	html hiddenInput afterFormSaveBeforeButtonActionCallback: [ self afterSave ].

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
