accessing
isEmailConfirmed
	"Confirmation Logik, a bit strange: If a confirmation-key is delivered,
	then the users email is NOT confirmed, but that key could be used to force
	the confirmation"
	^confirmationKey isBlank