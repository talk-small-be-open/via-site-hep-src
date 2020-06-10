as yet unclassified
loginWithPassword: aPassword
	(self session loginEmail: email password: aPassword)
		ifTrue: [
			loginOk := true.
			self answerLoginOk]
		ifFalse: [
			loginOk := false.
			]