as yet unclassified
loginOauthCode: aString website: aWebsite
	| postData response data apiToken instance |

	postData := {
		'client_id'->self oauthId.
		'client_secret'->self oauthSecret.
		'grant_type'->'authorization_code'.
		'response_type'->'code'.
		'code'->aString.
		'redirect_uri'->((self ssoCallbackUrl: aWebsite) asString).
	} aD.
	
	response := self postData: postData endpoint: '/oauth/token'.

	response isDictionary ifFalse: [ self signalError: 'Invalid data from API' ].

	response at: 'error' ifPresent: [:text | self signalError: ('Error from API: ', text) ].
	
	apiToken := response at: 'access_token'. "TODO: Save refresh_token also?"

	"Get users data. Needed for validation-ok, email changes, ..."
	data := self getUserData: apiToken.
	
	instance := self fromDictionary: data.
	
	instance apiToken: apiToken.
	
	^ instance