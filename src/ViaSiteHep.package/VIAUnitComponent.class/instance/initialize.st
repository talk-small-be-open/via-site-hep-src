initialization
initialize
	super initialize.
	
	self addContainerDiv addClass: (VIATocHelper toccamoduleCssOfToccaunit: unitNumber).
	
	"OPTIMIZE"
	modules := self wd findPublicModulesByIndexCode: (unitNumber asString, '.').

	modules := modules sortedBy: [ :each | each indexCode ].