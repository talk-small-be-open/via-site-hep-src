initialization
initialize
	super initialize.
	user := self currentUser.
	
	self addContainerDiv.
	self addCenterContainer.
	
	self refresh