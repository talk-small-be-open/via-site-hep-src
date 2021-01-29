rendering
renderAttributesModule: aModule on: html
	aModule isForDemo ifTrue: [
		html demoLabel
	]