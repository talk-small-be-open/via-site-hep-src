initialization
initialize
	super initialize.
	
	self addContainerDiv addClass: (VIATocHelper toccamoduleCssOfToccaunit: unitNumber).
	
	self initializeModules.
	
	self session currentToccaunit: unitNumber.
	
	showProgress := (VIATocHelper isVocabolarioCode: unitNumber) not.