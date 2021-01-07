as yet unclassified
enterInvitationCode
	| code |
	code := self request: 'myProfile:yourInvitationCodeQM'.
	
	(self wd findInvitationCommandByCode: code)
		ifNil: [
			self flashMessage: 'myProfile:wrongInvitationCode' ]
		ifNotNil: [ :command |
			command executeOnApplication: self app currentUser: user.
			self flashMessage: 'myProfile:invitationCodeCorrect'.
			self refresh
		]