rendering
renderTopOn: html
	
	html ifT: 'demo:ribbon' then: [ :yield |
		html div class: 'demoRibbon'; with: [
			html div class: 'ribbonText'; with: [yield value]
		]]