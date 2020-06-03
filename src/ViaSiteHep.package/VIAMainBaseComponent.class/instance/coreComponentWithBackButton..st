accessing
coreComponentWithBackButton: aComponent
	coreComponent ifNil: [coreComponent := aComponent. ^self].
	
	aComponent addBackButton.
	
	coreComponent show: aComponent