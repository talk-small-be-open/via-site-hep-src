as yet unclassified
loginOauthCode: aString website: aWebsite request: aRequest
	| postData response data apiToken instance |

	"OPTIMIZE: redirect_uri not needed but maybe API wants it? Check it."
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

	response at: 'error' ifPresent: [:text |
"		self signalError: ('OAuth error while granting auth-code: ', text)."
		self signalError: 'OAuth error while granting auth-code.' returnData: response request: aRequest
	].
	
	apiToken := response at: 'access_token'. "TODO: Save refresh_token also?"

	"Get users data. Needed for validation-ok, email changes, ..."
	data := self getUserData: apiToken.
	
	instance := self fromDictionary: data.
	
	instance apiToken: apiToken.
	
	^ instance