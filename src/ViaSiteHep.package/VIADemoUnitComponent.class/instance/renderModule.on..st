rendering
renderModule: aModule on: html.
	html span class: 'indexCode'; with: aModule indexCodeString.
	html span class: 'moduleTitle'; with: aModule title.
	aModule isForDemo ifTrue: [
		html demoLabel
	]