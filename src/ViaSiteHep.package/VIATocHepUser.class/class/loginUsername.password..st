as yet unclassified
loginUsername: aUsername password: aPasswordString
	| postData response token data |

	postData := {
		'username'->aUsername.
		'password'->aPasswordString.
	} aD.
	
	response := self postData: postData endpoint: 'deutsch/V1/integration/customer/token'.
	token := response.

	"TODO Evt. immer user daten holen? und abgleichen? overhead?"
	data := self getUserData: token.
	
	"TODO User oder token oder was?"
	^ self fromDictionary: data