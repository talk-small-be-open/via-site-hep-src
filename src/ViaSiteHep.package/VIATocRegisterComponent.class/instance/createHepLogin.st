as yet unclassified
createHepLogin
	| hepUser |

	"Send curl request"
	[
		hepUser := VIATocHepOldUser createNewFn: firstName ln: lastName pw: password em: email
	] on: VIAHepUserError do: [ :error |
		hepMessage := error messageText.
		self gotoPage: #hepRegistrationFailed.
		^ self
	].

	user := hepUser findOrCreateViaUserWebsite: self website.
	user beTermsAccepted.

	"Some initializations after registration"
	"Autologin default on if mobile device"
	user useAutologin: (self session isMobileDevice).

	self isInvited ifTrue: [ 
		invitationCommand executeOnApplication: self app currentUser: user.
	].

	self gotoPage: #yourHepAccount.