actions
openLoginDialogEmail: aString
	| login |
	login := VIATocLoginComponent new.

	login email: aString.
	
	self coreComponent: login onAnswer: [:answer |
		answer = true ifTrue: [self login]
	]