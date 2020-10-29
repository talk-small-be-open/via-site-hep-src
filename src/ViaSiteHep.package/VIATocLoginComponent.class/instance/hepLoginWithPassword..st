as yet unclassified
hepLoginWithPassword: aPassword
	| viaUser hepUser |
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
		"Check, if Email is verified by hep. Except for invitees, which are always OK"
		(hepUser isEmailConfirmed not and: [ viaUser isInvitee not ]) ifTrue: [
			loginOk := false.
			messageKey := 'login:accountNotVerified'.
		] ifFalse: [
			self session loginUser: viaUser remember: rememberMe.
			loginOk := true.
			self answerLoginOk
		]
	]