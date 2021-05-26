rendering
renderModule: each on: html
	html span class: 'indexCode'; with: each indexCodeString.
	
	html span class: 'level'; with: [ 
		html iconLevelTag: each levelTag
	].
	
	html span class: 'moduleTitle'; with: [
		html span: each title.
		self renderAttributesModule: each on: html
	].
	
