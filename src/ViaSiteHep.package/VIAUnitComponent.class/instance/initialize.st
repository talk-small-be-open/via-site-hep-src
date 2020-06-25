initialization
initialize
	super initialize.
	
	self addContainerDiv.
	
	"OPTIMIZE"
	modules := self wd findPublicModulesByIndexCode: (unitNumber asString, '.').

	modules := modules sortedBy: [ :each | each indexCode ].