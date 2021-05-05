as yet unclassified
findOrCreateViaUserWebsite: aWebsite
	| socialId viaUser |
	socialId := 'hep_', self hepId asString.
	
	viaUser := aWebsite data findOrCreateUserBySocialId: socialId email: email.

	"Automigration hep-User-ID. Remove all, but keep one"
	viaUser socialIds do: [ :each |
		(each beginsWith: 'hep_') ifTrue: [
			viaUser removeSocialId: each ]
	].
	viaUser addSocialId: socialId.

	viaUser
		firstName: firstname;
		lastName: lastname.
		
	^ viaUser