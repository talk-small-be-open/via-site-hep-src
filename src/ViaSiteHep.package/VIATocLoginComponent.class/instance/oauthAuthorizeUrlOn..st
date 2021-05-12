obsolete
oauthAuthorizeUrlOn: html
	| url redirectUrl oauthId |
	
	oauthId := VIATocHepUser oauthId.

	url := WAUrl absolute: (VIATocHepUser apiUrl, '/oauth/authorize').
	
	redirectUrl := html actionBaseUrl withoutQuery
"		addField: (html callbacks store: (WAActionCallback on: [self handleIncomingOauthAuthorization]));"
		host: self requestContext request host;
		scheme: 'https';
		addToPath: 'sso';
		yourself.

"	redirectUrl queryFields removeKey: '_k'."
	
	url
		addField: 'client_id' value: oauthId;
		addField: 'protocol' value: 'oauth2';
		addField: 'response_type' value: 'code';
		addField: 'scope' value: 'email profile';
		addField: 'redirect_uri' value: redirectUrl.
		
	url
		addField: 'code_challenge_method' value: 'implicit';
		addField: 'access_type' value: 'ipsa'.
			
	^ url