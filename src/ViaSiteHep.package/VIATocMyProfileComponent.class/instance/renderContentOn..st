rendering
renderContentOn: html
	html heading: 'My account'.
	html form: [
		html label: [
			html ukCheckbox on: #useAutologin of: user.
			html span: 'autologin'].
		html submitButton: 'SPeichern'
	].
