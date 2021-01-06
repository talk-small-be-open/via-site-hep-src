as yet unclassified
localLoginWithPassword: aPassword
	(self session loginEmail: email password: aPassword)
		ifTrue: [
			loginOk := true.
			self answerLoginOk]
		ifFalse: [
			loginOk := false.
			messageKey := 'login:loginError'.
		]