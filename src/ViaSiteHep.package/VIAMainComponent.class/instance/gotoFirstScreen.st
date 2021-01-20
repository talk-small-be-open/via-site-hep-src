actions
gotoFirstScreen

"	self currentUser termsAccepted ifFalse: [ self showAcceptTermsDialog. ^ self ]."

	"Very first login"
	self currentUser loginCount = 1 ifTrue: [ self showRequestForInvitationCode. ^ self ].

	"Modul von nicht-eingeloggtem Bereich anpeilen?"
"	self session gotoModule ifNotNil: [:m |
		self session clearGotoModule.
		self gotoModule: m. ^self]."

	self currentPortfolio lastOpenedModule
		ifNotNil: [:m | self gotoModule: m ]
		ifNil: [self gotoHome]
		
	"DEV"
"	self gotoModule: self wd modules anyOne"