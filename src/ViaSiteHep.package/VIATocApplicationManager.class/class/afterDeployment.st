updating
afterDeployment
	super afterDeployment.

	self registerSeasideComponents.
	self generatePwaFiles.
