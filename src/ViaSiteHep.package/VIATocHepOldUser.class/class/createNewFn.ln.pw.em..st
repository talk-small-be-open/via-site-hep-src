as yet unclassified
createNewFn: aFirstName ln: aLastName pw: aPassword em: anEmail
	| postData response |

	postData := {
		'customer'->{
			'firstname'->aFirstName.
			'lastname'->aLastName.
			'email'->anEmail.
			'prefix'->' '. "Magento will was. OPTIMIZE"
		} aD.
		'password'->aPassword.
	} aD.

	response := self postData: postData endpoint: 'deutsch/V1/customers'.

	^ self fromDictionary: response