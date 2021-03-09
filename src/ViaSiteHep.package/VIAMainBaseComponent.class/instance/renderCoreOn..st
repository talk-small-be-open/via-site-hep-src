rendering
renderCoreOn: html
	html div class: 'core'; with: [
		[
			html render: self coreComponent
		] ifCurtailed: [
			"OPTIMIZE Handling diversify"
			
			"Probably the module which has been recently opened,
			should not be reopened and causing an error"
			self currentPortfolio lastOpenedModule: nil.
		]
	]