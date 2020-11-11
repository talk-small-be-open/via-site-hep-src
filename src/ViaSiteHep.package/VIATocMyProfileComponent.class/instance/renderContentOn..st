rendering
renderContentOn: html
	html heading t: 'myProfile:title'.
	html form: [
		html label: [
			html ukCheckbox on: #useAutologin of: user.
			html span: 'autologin'].
		html div class: 'uk-margin-top'; with: [
			html submitButton
				t: 'form:save'
		]
	].
