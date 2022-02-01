initialization
initializeFromDictionary: aDictionary
	self initialize.
	
	id := (aDictionary at: 'id') asInteger.
	groups := (aDictionary at: 'groups').
	firstName := aDictionary at: 'first_name'.
	lastName := aDictionary at: 'last_name'.
	email := aDictionary at: 'email'.

	"TBD?: Einfacher mit property is_email_verified boolean"
	isEmailConfirmed := (aDictionary at: 'email_verified_at') notNil.
	
"	confirmationKey := aDictionary at: 'confirmation' ifAbsent: [ nil ]."