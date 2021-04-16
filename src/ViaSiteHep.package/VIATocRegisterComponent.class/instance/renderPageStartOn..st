rendering
renderPageStartOn: html
	html heading t: 'register:title'.
	html paragraph: [html t: 'register:info'].

"	self renderTeacherRegistrationOn: html."

	html form noAutocomplete; class: 'uk-form uk-form-stacked'; with: [
		html div class: 'uk-margin-small'; style: 'height: 0.01px; color: transparent; overflow: hidden'; with: [
			html ukFormLabel style: 'height: 0.01px;'; with: 'Are you a bot?'.
			html ukFormControls style: 'height: 0.01px;'; with: [
				html ukTextInput style: 'height: 0.01px;'; class: 'name username mandatory required'; id: 'name'; on: #antibotCode of: self]].
		html div class: 'uk-margin-small'; with: [
			html ukFormLabel t: 'register:invitationCode'.
			html ukFormControls: [
				html ukTextInput class: ''; id: 'invitationCode'; on: #invitationCode of: self]].
		html div class: 'uk-margin-small'; with: [
			html ukFormLabel t: 'register:email'.
			html ukFormControls: [
				html ukEmailInput id: 'email'; required; on: #email of: self]].
		html div class: 'uk-margin-small'; with: [
			html ukFormLabel t: 'register:firstName'.
			html ukFormControls: [
				html ukTextInput class: ''; id: 'firstName'; on: #firstName of: self]].
		html div class: 'uk-margin-small'; with: [
			html ukFormLabel t: 'register:lastName'.
			html ukFormControls: [
				html ukTextInput class: ''; id: 'lastName'; on: #lastName of: self]].
		html div class: 'uk-margin-small'; with: [
			html ukFormLabel t: 'register:password'.
			html ukFormControls: [
				html ukPasswordInput
					required;
					pattern: '(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$';
					class: '';
					on: #password of: self]].
		html div class: 'uk-margin-small'; with: [
			html ukFormLabel t: 'register:passwordConfirmation'.
			html ukFormControls: [html ukPasswordInput required; class: ''; on: #passwordConfirmation of: self]].


"		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:captcha'.
			html div class: 'uk-form-controls'; with: [
				html div
					class: 'g-recaptcha';
					attributeAt: 'data-sitekey' put: '6LehQygTAAAAAGcZ7Xd_mNPJXnku8A0RvejzIxeM']]."

"		self renderDisclaimerOn: html."

		html div class: 'uk-margin'; with: [
			html ukFormControls: [
				html label: [
					html ukCheckbox on: #termsAccepted of: self.
					html space.
					html t: 'register:termsAccepted']]].
		
		html div class: 'uk-margin-medium'; with: [
			html ukSubmitButton
				callback: [self checkForm];
				t: 'register:registerNow'.
		].
	]