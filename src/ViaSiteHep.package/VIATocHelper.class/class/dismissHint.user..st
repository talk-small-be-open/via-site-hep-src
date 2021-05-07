hint-help
dismissHint: aUiKeyPart user: aUser
	| propertyKey |
	propertyKey := 'showHint:', aUiKeyPart.
	aUser propertyAt: propertyKey put: false.