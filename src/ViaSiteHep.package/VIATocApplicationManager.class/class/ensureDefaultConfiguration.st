as yet unclassified
ensureDefaultConfiguration
	super ensureDefaultConfiguration.
	self db propertyAt: #hep:oauth:enabled default: [true].
	
	#(#hep:oauth:clientId #hep:oauth:secret #hep:api:url) do: [ :each |
		self db propertyAt: each default: [''] ]