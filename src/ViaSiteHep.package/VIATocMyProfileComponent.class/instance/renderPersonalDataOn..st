rendering
renderPersonalDataOn: html
	html heading t: 'myProfile:title'.
	html div pT: 'myProfile:supportInfo'.
	html heading level3; t: 'myProfile:personalData'.
	html paragraph with: [
		html span: self currentUser fullName.
		html break.
		html span: self currentUser email ]