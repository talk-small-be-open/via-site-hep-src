rendering
renderButtonsOn: html
	self task isCheckable ifTrue: [
		html div class: 'buttons'; with: [
			self renderSolutionButtonsOn: html]]