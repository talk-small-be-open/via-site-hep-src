accessing
coreComponentWithBackButton: aComponent
	
	self coreComponent ifNil: [
		self coreComponent: aComponent. ^self].
	
	aComponent addBackButton.
	
	self coreComponent show: aComponent