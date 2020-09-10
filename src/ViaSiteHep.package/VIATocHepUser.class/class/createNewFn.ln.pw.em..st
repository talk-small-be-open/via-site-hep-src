as yet unclassified
createNewFn: aFirstName ln: aLastName pw: aPassword em: anEmail
	| postData response |

	postData := {
		'customer'->{
			'firstname'->aFirstName.
			'lastname'->aLastName.
			'email'->anEmail.
			'prefix'->'Tocca-User'.
		} aD.
		'password'->aPassword.
	} aD.

	response := self postData: postData endpoint: 'deutsch/V1/customers'.
	
	"TODO: Fehler abfangen, ^ nil"
"	response at: 'message' ifPresent: [ :m | self error: m ]."

	^ self fromDictionary: response