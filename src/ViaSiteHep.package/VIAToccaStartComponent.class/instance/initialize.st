initialization
initialize
	super initialize.
	
	showFinder := true.
	finder := VIAModuleFinderComponent new.
	
	self addContainerDiv.