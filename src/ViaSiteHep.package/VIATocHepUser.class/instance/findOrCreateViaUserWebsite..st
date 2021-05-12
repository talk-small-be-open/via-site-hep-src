as yet unclassified
findOrCreateViaUserWebsite: aWebsite
	| socialId viaUser |
	socialId := 'hep_id_', self hepId asString.
	
	viaUser := aWebsite data findOrCreateUserBySocialId: socialId email: email.

	viaUser
		firstName: firstName;
		lastName: lastName.
		
	^ viaUser