as yet unclassified
createHepLogin
	| hepUser |

	"Send curl request"
	[
		hepUser := VIATocHepUser createNewFn: firstName ln: lastName pw: password em: email
	] on: VIATocHepUserError do: [ :error |
		hepMessage := error messageText.
		self gotoPage: #hepRegistrationFailed.
		^ self
	].

	user := hepUser findOrCreateViaUserWebsite: self website.
	user beTermsAccepted.

	self gotoPage: #yourHepAccount.