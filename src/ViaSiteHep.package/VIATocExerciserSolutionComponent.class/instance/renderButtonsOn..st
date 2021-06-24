rendering
renderButtonsOn: html
	self task isCheckable ifTrue: [
		html div class: 'exerciserMainButtons'; with: [
			self renderSolutionButtonsOn: html]]