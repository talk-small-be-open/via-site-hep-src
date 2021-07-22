as yet unclassified
isOauthEnabled
	^ (self db propertyAt: #hep:oauth:enabled) and: [self oauthId notBlank]