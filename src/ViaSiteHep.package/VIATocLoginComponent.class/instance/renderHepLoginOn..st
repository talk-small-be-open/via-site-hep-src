rendering
renderHepLoginOn: html

	html form id: 'loginForm'; class: 'uk-form uk-form-stacked'; with: [

		loginOk = false ifTrue: [
			html ukLabelDanger t: messageKey.
			html break.
		].

		html div class: 'uk-margin-small'; with: [
"			html label class: 'uk-form-label'; t: 'login:email'."
			html div class: 'uk-form-controls'; with: [
				html ukTextInput
					placeholder: ('login:email't);
					id: 'loginEmail';
					autocomplete: 'username';
					script: (html jQuery this triggerFocus);
					on: #email of: self]].
		html div class: 'uk-margin-small'; with: [
"			html label class: 'uk-form-label'; t: 'login:password'."
			html div class: 'uk-form-controls'; with: [
				html ukPasswordInput
					placeholder: ('login:password't);
					autocomplete: 'current-password';
					id: 'loginPassword';
					callback: [:value | self loginWithPassword: value]]].
		html div class: 'uk-margin-small'; with: [
"			html label class: 'uk-form-label'; t: 'login:password'."
			html div class: 'uk-form-controls'; with: [
				html label with: [
					html ukCheckbox
						on: #rememberMe of: self.
					html space.
					html t: 'login:rememberMe'.
		]]].
		html div class: 'uk-margin'; with: [
			html ukSubmitButton t: 'login:loginNow'].
	].