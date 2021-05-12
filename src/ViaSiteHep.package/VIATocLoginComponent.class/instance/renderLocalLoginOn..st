rendering
renderLocalLoginOn: html

	html ukFormStacked id: 'loginForm'; with: [

		loginOk = false ifTrue: [
			html ukAlertDanger with: [
				html pT: messageKey.
				hepErrorMessage ifNotBlank: [
					html div: hepErrorMessage.
				]].
		].

		html div class: 'uk-margin-small'; with: [
"			html label class: 'uk-form-label'; t: 'login:email'."
			html ukFormControls: [
				html ukEmailInput
					placeholder: ('login:email't);
					id: 'loginEmail';
					autocomplete: 'username';
					noAutocapitalize;
					noAutocorrect;
					script: (html jQuery this triggerFocus);
					on: #email of: self]].
		html div class: 'uk-margin-small'; with: [
"			html label class: 'uk-form-label'; t: 'login:password'."
			html ukFormControls: [
				html ukPasswordInput
					placeholder: ('login:password't);
					autocomplete: 'current-password';
					id: 'loginPassword';
					callback: [:value | self loginWithPassword: value]]].
		html div class: 'uk-margin-small'; with: [
"			html label class: 'uk-form-label'; t: 'login:password'."
			html ukFormControls: [
				html label with: [
					html ukCheckbox
						on: #rememberMe of: self.
					html space.
					html t: 'login:rememberMe'.
		]]].
		html div class: 'uk-margin'; with: [
			html ukSubmitButton t: 'login:loginNow'].
	].