initialization
initializeModules
	
	modules := self wd findPublicModulesByFirstIndexCode: unitNumber.
	modules := modules sortedBy: [ :each | each indexCode ].
