initialization
initialize

	super initialize.
	
	self addContainerDiv.
	self addUkContainer.
	
	"Cleanup always, not just at login"
	self currentPortfolio cleanup.
	
	self refresh