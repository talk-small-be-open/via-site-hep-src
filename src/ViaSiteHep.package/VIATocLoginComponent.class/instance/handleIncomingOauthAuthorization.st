obsolete
handleIncomingOauthAuthorization
	| code |
	
	"Get the autorization code"
	code := self requestContext request at: 'code' ifAbsent: [ nil ].
	
	"Convert it to an access token"
	code ifNotBlank: [
		self hepLoginWithOauthCode: code ]