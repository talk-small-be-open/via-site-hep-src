as yet unclassified
oauthAuthorizeUrlWebsite: aWebsite
	| url redirectUrl |
	
	url := WAUrl absolute: (self apiUrl, '/oauth/authorize').
	
	redirectUrl := self ssoCallbackUrl: aWebsite.
	
	url
		addField: 'client_id' value: self oauthId;
		addField: 'protocol' value: 'oauth2';
		addField: 'response_type' value: 'code';
		addField: 'scope' value: 'email profile';
		addField: 'redirect_uri' value: redirectUrl.
		
	"Needed?"
	url
		addField: 'code_challenge_method' value: 'implicit';
		addField: 'access_type' value: 'ipsa'.
			
	^ url