initialization
initialize
	| block blockName id |
	super initialize.

	[id := (self requestContext request at: 'id') asInteger.

	blockName := (#testdriveInitBlock, id greaseString) asSymbol.

	block := self db propertyAt: blockName.
		
	block value: self
	] ifError: [ self coreComponent: (VIAInformationComponent message: 'admin:testdriveError')]