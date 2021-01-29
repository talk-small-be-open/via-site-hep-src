initialization
initializeModules

	"Get all public and special betatesing modules"
	modules := Set new.
	modules addAll: (self wd findPublicModulesByFirstIndexCode: unitNumber).
	modules addAll: (self wd findBetatestingModulesByFirstIndexCode: unitNumber).

	modules := modules sortedBy: [ :each | each indexCode ].