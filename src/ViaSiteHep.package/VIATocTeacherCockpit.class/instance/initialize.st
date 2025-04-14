initialization
initialize
	super initialize.
	
	"Prefered students group?"
	self session lastUsedStudentsGroup ifNotNil: [ 
		self showGroupModules: self session lastUsedStudentsGroup
	]