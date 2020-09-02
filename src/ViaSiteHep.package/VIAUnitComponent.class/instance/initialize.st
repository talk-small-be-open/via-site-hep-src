initialization
initialize
	super initialize.
	
	self addContainerDiv addClass: (VIATocHelper toccamoduleCssOfToccaunit: unitNumber).
	
	modules := self wd findPublicModulesByFirstIndexCode: unitNumber.

	modules := modules sortedBy: [ :each | each indexCode ].