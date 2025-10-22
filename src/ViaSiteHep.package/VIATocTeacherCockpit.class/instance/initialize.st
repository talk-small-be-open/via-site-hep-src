initialization
initialize
	super initialize.
	
	"Prefered students group?"
"!!! TODO FEATURE release:
	self session lastUsedStudentsGroup ifNotNil: [ 
		self showGroupModules: self session lastUsedStudentsGroup
	]"