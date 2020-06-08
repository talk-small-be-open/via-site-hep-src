initialization
initialize
	super initialize.
	
	"OPTIMIZE"
	modules := self wd findModulesByIndexCode: (unitNumber asString, '.')