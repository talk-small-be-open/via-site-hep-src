initialization
initializeModules

	"Get all public and special demo modules"
	modules := Set new.
	modules addAll: (self wd findPublicModulesByFirstIndexCode: unitNumber).
	modules addAll: (self wd findDemoModulesByFirstIndexCode: unitNumber).

	modules := modules sortedBy: [ :each | each indexCode ].