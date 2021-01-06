as yet unclassified
loginWithPassword: aPassword
	"Check if we have a local user, then decide the login method"
	| user |
	user := self wd findUserByEmail: email.
	
	"Try local first, if there is a password"
	(user notNil and: [ user hasLocalPassword ]) ifTrue: [
		self localLoginWithPassword: aPassword ].

	"... then login at hep"
	self isLoggedIn ifFalse: [
		self hepLoginWithPassword: aPassword ].