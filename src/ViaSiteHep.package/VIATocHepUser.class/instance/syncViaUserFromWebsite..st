as yet unclassified
syncViaUserFromWebsite: aWebsite
	| viaUser |
	viaUser := self findOrCreateViaUserWebsite: aWebsite.
	
	viaUser ifNotNil: [ 
		viaUser
			isTeacher: self isTeacher.
		
		"TODO: Maybe check the confirmation status? isEmailConfirmed"
	].

	^ viaUser