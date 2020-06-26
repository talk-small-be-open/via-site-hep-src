as yet unclassified
findOrCreateViaUserWebsite: aWebsite
	| socialId viaUser |
	socialId := 'hep_', self hepId asString.
	
	viaUser := aWebsite data findOrCreateUserBySocialId: socialId email: email.

	viaUser
		firstName: firstname;
		lastName: lastname.
		
	^ viaUser