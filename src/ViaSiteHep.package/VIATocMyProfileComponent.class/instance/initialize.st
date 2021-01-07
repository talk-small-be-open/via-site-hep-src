initialization
initialize
	super initialize.
	user := self currentUser.
	userGroups := self wd findUserGroupsByMember: user.
	
	self addContainerDiv.
	self addCenterContainer.