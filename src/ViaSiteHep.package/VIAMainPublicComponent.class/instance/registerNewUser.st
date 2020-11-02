as yet unclassified
registerNewUser
	| register |
	register := VIATocRegisterComponent new.
	
	self coreComponent: register onAnswer: [:answer |
		answer ifNotNil: [
			register user isInvitee
				ifTrue: [self openLoginDialogEmail: register user email]
				ifFalse: [ self gotoHome ]
		]
	]