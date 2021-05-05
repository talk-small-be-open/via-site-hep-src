initialization
initializeFromDictionary: aDictionary
	self initialize.
	
	id := (aDictionary at: 'id') asInteger.
	groupId := (aDictionary at: 'group_id') asInteger.
	firstname := aDictionary at: 'firstname'.
	lastname := aDictionary at: 'lastname'.
	email := aDictionary at: 'email'.

	confirmationKey := aDictionary at: 'confirmation' ifAbsent: [ nil ].