rendering
renderCoreOn: html
	html div class: 'core'; with: [
		html render: self coreComponent]