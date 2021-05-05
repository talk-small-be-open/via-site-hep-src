as yet unclassified
loginUsername: aUsername password: aPasswordString
	| postData response data apiToken instance |

	"hep username is email address"
	
	postData := {
		'username'->aUsername.
		'password'->aPasswordString.
	} aD.
	
	response := self postData: postData endpoint: 'deutsch/V1/integration/customer/token'.
	apiToken := response.

	"Get users data. Needed for validation-ok, email changes, ..."
	data := self getUserData: apiToken.
	
	instance := self fromDictionary: data.
	
	instance apiToken: apiToken.
	
	^ instance