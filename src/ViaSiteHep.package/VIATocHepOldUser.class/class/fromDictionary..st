instance creation
fromDictionary: aDictionary
	
	^ self basicNew
		initializeFromDictionary: aDictionary;
		yourself