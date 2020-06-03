actions
gotoFirstScreen

"	self currentUser termsAccepted ifFalse: [ self showAcceptTermsDialog. ^ self ]."

	"Modul von nicht-eingeloggtem Bereich anpeilen?"
"	self session gotoModule ifNotNil: [:m |
		self session clearGotoModule.
		self gotoModule: m. ^self]."

"	self currentPortfolio isEmpty
		ifTrue: [self gotoHome]
		ifFalse: [self gotoMyPortfolio]"
		
	"DEV"
	self gotoModule: self wd modules anyOne