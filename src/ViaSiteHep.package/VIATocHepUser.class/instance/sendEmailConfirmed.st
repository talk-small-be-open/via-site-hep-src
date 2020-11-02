accessing
sendEmailConfirmed
	| data |
	data := { 'confirmationKey'->confirmationKey } aD.
	
	self class callMethod: 'PUT' data: data headers: {'Authorization: Bearer ', apiToken} endpoint: 'V1/customers/me/activate'.
	
	"OPTIMIZE: Check result"
	
	"Key is used, so destroy it"
	confirmationKey := nil