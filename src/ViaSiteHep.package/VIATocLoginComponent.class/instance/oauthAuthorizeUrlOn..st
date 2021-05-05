as yet unclassified
oauthAuthorizeUrlOn: html
	| url redirectUrl oauthId |
	
	oauthId := self wd propertyAt: #hep:oauth:clientId.

	url := WAUrl absolute: (VIATocHepUser apiUrl, '/authorize').
	
	redirectUrl := html actionBaseUrl copy
		addField: (html callbacks store: (WAActionCallback on: [self handleIncomingOauthAuthorization]));
		host: self requestContext request host;
		scheme: 'https';
		yourself.
	
	url
		addField: 'client_id' value: oauthId;
		addField: 'response_type' value: 'code';
		addField: 'redirect_uri' value: redirectUrl.
		
	^ url