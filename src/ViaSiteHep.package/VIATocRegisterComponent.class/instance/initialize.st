initialization
initialize

	super initialize.

	termsAccepted := false.
	
	disclaimerComponent := VIADisclaimerComponent new
		beEmbedded;
		yourself.
		
	antibotCodeOrigin := UUID new asString36 first: 5.
		
	self addCenterContainer