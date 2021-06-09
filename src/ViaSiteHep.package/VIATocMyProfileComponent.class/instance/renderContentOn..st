rendering
renderContentOn: html
	html heading t: 'myProfile:title'.
	html div pT: 'myProfile:supportInfo'.
	html heading level3; t: 'myProfile:personalData'.
	html paragraph with: [
		html span: self currentUser fullName.
		html break.
		html span: self currentUser email ].

	self renderSettingsOn: html.

	html heading level3; t: 'myProfile:permissions'.
	user isTeacher ifTrue: [ html div t: 'myProfile:iAmTeacher' ].
	user isStudent ifTrue: [ html div t: 'myProfile:iAmStudent' ].
	self ifBetatest: [ html div t: 'myProfile:youAreLoggedInForBetatest' ].


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