as yet unclassified
ssoCallbackUrl: aWebsite
	"TODO Vermutlich irgendwie die Session-ID verpacken. Nicht als query-param, das ist nicht OAuth kompat."
	^ (WAUrl absolute: aWebsite url)
		addToPath: 'sso';
		yourself.
