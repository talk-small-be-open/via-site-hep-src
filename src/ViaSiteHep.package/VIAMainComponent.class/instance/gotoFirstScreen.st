actions
gotoFirstScreen

"	self currentUser termsAccepted ifFalse: [ self showAcceptTermsDialog. ^ self ]."

	"Very first login"
	(self currentUser loginCount = 1) ifTrue: [
		"If the user did not enter an invitation code so far,
		we give a second chance, just UX."
		(self currentUser studentGroupsInWebsite: self website) ifBlank: [
			self showRequestForInvitationCode ].
		^ self
	].

	"Modul von URL anpeilen?"
	self session gotoModule ifNotNil: [:m |
		| taskNumber |
		taskNumber := self session gotoTask.
		self session clearGotoModule.
		(m canView: self currentUser) ifTrue: [
			self gotoModule: m taskNumber: taskNumber.
			^self ]].
	


"Letztes Modul öffnen:	self currentPortfolio lastOpenedModule
		ifNotNil: [:m | self gotoModule: m ]
		ifNil: [self gotoHome]"

	self gotoHome
		
	"DEV"
"	self gotoModule: self wd modules anyOne"