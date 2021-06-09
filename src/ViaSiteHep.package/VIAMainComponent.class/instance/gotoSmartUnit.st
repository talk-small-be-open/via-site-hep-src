as yet unclassified
gotoSmartUnit

"	self currentPortfolio lastOpenedModule ifNotBlank: [ :m |
		self gotoModule: m. ^ self ]."
	
"	self session currentToccaunit ifNotBlank: [ :unit |"
	self session workingToccaunit ifNotBlank: [ :unit |
		self gotoToccaunit: unit. ^ self ].
	
	self gotoToccaunit: 1