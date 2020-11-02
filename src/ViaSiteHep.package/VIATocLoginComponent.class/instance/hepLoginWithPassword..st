as yet unclassified
hepLoginWithPassword: aPassword
	| viaUser hepUser skipVerification |
	loginOk := false.
	messageKey := 'login:loginError'.
	[
		hepUser := VIATocHepUser loginUsername: email password: aPassword.
		viaUser := hepUser syncViaUserFromWebsite: self website.
	] on: VIATocHepUserError do: [ :error |
		loginOk := false.
		messageKey := 'login:hepLoginError'.
	].

	viaUser ifNotNil: [
		"Auto-activate invited users"
		viaUser isInvitee ifTrue: [
			hepUser isEmailConfirmed ifFalse: [ hepUser sendEmailConfirmed ] ].
		
		"Check, if Email is verified by hep."
		skipVerification := self isProduction and: [VIATocHepUser isApiStaging].
		(skipVerification or: [hepUser isEmailConfirmed]) ifTrue: [
			self session loginUser: viaUser remember: rememberMe.
			loginOk := true.
			self answerLoginOk
		] ifFalse: [
			loginOk := false.
			messageKey := 'login:accountNotVerified'.
		]
	]