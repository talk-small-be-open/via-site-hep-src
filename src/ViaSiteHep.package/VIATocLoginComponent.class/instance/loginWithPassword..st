as yet unclassified
loginWithPassword: aPassword
	"Check if we have a local user, then decide the login method"
	| user |

	loginOk := false.
	messageKey := 'login:loginError'.
	hepErrorMessage := nil.
	
	(self inputIsBullshitEmail: email pw: aPassword) ifTrue: [
		^ self ].
	
	user := self wd findUserByEmail: email.
	
	"Try local first, if there is a password"
	(user notNil and: [ user hasLocalPassword ]) ifTrue: [
		self localLoginWithPassword: aPassword ].

	"OLD API login: ... then login at hep"
"	self isLoggedIn ifFalse: [
		self hepLoginWithPassword: aPassword ]."