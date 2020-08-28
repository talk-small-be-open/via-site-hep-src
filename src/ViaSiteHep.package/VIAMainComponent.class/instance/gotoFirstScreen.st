actions
gotoFirstScreen

"	self currentUser termsAccepted ifFalse: [ self showAcceptTermsDialog. ^ self ]."

	"Modul von nicht-eingeloggtem Bereich anpeilen?"
"	self session gotoModule ifNotNil: [:m |
		self session clearGotoModule.
		self gotoModule: m. ^self]."

	self currentPortfolio lastOpenedModule
		ifNotNil: [:m | self gotoModule: m ]
		ifNil: [self gotoHome]
		
	"DEV"
"	self gotoModule: self wd modules anyOne"