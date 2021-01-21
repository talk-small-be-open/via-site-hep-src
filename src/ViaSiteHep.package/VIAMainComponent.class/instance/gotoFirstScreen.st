actions
gotoFirstScreen

"	self currentUser termsAccepted ifFalse: [ self showAcceptTermsDialog. ^ self ]."

	"Very first login"
	(self currentUser loginCount = 1) ifTrue: [
		"If the user did not enter an invitation code so far,
		we give a second change, just UX."
		(self currentUser groupsInWebsite: self website) ifBlank: [
			self showRequestForInvitationCode ].
		^ self
	].

	"Modul von nicht-eingeloggtem Bereich anpeilen?"
"	self session gotoModule ifNotNil: [:m |
		self session clearGotoModule.
		self gotoModule: m. ^self]."

	self currentPortfolio lastOpenedModule
		ifNotNil: [:m | self gotoModule: m ]
		ifNil: [self gotoHome]
		
	"DEV"
"	self gotoModule: self wd modules anyOne"