actions
openLoginDialog
	| login |
	login := VIATocLoginComponent new.
"	login messageKey: 'mainPublic:pleaseLogin:info'."

	self coreComponent: login onAnswer: [:answer |
		answer = true ifTrue: [self login]
	]