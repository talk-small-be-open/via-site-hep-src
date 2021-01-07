rendering
renderContentOn: html
	html heading t: 'myProfile:title'.
	html ukFormStacked: [
		html ukFormLabel: [
			html ukCheckbox on: #useAutologin of: user.
			html space.
			html sT: 'myProfile:autologin'].
		html div class: 'uk-margin-top'; with: [
			html submitButton
				t: 'form:save'
		]
	].

	userGroups ifNotBlank: [
		html heading level3; t: 'myProfile:myGroups'.
		html ukList class: 'uk-margin'; with: [
			userGroups do: [ :each |
				html listItem: each displayName
			].
		].
	].

	html div class: 'uk-margin'; with: [
		self ifNotTeacher: [
			html anchor
				callback: [ self enterInvitationCode ];
				t: 'myProfile:enterInvitationCode'.
"			html break.
			html anchor
				callback: [ self registerAsTeacher ];
				t: 'myProfile:registerAsTeacher'."
		].
	]