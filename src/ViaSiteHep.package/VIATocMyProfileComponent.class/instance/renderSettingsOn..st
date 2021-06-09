rendering
renderSettingsOn: html
	html heading level3; t: 'myProfile:settings'.
	html ukFormStacked: [
		html ukFormLabel: [
			html ukCheckbox on: #useAutologin of: user.
			html space.
			html sT: 'myProfile:autologin'].
		html ukFormLabel: [
			html ukCheckbox on: #enabledHintBoxes of: user.
			html space.
			html sT: 'myProfile:enabledHintBoxes'].
		html div class: 'uk-margin-top'; with: [
			html submitButton
				t: 'form:save'
		]
	].
	html div class: 'uk-margin'; with: [
		html anchor
			callback: [ self resetHints ];
			t: 'myProfile:resetHints' ].