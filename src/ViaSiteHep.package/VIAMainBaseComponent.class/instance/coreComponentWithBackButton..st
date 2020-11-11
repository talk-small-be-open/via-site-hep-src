accessing
coreComponentWithBackButton: aComponent
	"obsolete?"
	
	self coreComponent ifNil: [
		self coreComponent: aComponent. ^self].
	
	aComponent addBackButton.
	
	self coreComponent show: aComponent