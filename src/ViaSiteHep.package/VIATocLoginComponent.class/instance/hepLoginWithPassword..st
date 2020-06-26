as yet unclassified
hepLoginWithPassword: aPassword
	| viaUser hepUser |
	loginOk := false.
	[
		hepUser := VIATocHepUser loginUsername: email password: aPassword.
		viaUser := hepUser findOrCreateViaUserWebsite: self website.
	] on: VIATocHepUserError do: [ :error |
		"TODO: Message anzeigen"
		loginOk := false
	].

	viaUser ifNotNil: [
		self session loginUser: viaUser.
		loginOk := true.
		self answerLoginOk
	]