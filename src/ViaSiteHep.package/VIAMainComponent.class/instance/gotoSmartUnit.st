as yet unclassified
gotoSmartUnit

	self currentPortfolio lastOpenedModule ifNotBlank: [ :m |
		self gotoModule: m. ^ self ].
	
	self session preferredToccaunit ifNotBlank: [ :unit |
		self gotoToccaunit: unit. ^ self ].
	
	self gotoToccaunit: 1