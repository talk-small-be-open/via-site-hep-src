obsolete
hepLoginWithPassword: aPassword
	| viaUser hepUser skipVerification |
	loginOk := false.
	messageKey := 'login:loginError'.
	hepErrorMessage := nil.
	[
		hepUser := VIATocHepOldUser loginUsername: email password: aPassword.
		viaUser := hepUser syncViaUserFromWebsite: self website.
	] on: VIATocHepUserError do: [ :error |
		loginOk := false.
		messageKey := 'login:hepLoginError'.
		hepErrorMessage := error messageText.
		
		"Special case: If the user is local present, then he might need to reregister at hep"
		(self wd findUserByEmail: email) ifNotNil: [
			"If does not exist at hep, then probably reregister"
			(VIATocHepOldUser checkEmailExists: email) ifFalse: [
				messageKey := 'login:tryReRegisterAtHep'.
				hepErrorMessage := nil.
			].
		]
	].

	viaUser ifNotNil: [
		"Auto-activate invited users"
		viaUser isInvitee ifTrue: [
			hepUser isEmailConfirmed ifFalse: [ hepUser sendEmailConfirmed ] ].
		
		"Check, if Email is verified by hep."
		skipVerification := self isProduction and: [VIATocHepOldUser isApiStaging].
		(skipVerification or: [hepUser isEmailConfirmed]) ifTrue: [
			self session loginUser: viaUser remember: rememberMe.
			loginOk := true.
			self answerLoginOk
		] ifFalse: [
			loginOk := false.
			messageKey := 'login:accountNotVerified'.
		]
	]