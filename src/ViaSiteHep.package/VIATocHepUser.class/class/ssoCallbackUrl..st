as yet unclassified
ssoCallbackUrl: aWebsite
	^ (WAUrl absolute: aWebsite url)
		addToPath: 'sso';
		yourself.
