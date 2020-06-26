rendering
renderPageStartOn: html
	html heading t: 'register:title'.
	html paragraph: [html t: 'register:info'].

	html form noAutocomplete; class: 'uk-form uk-form-stacked'; with: [
		html div class: 'uk-margin-small'; style: 'height: 0.01px; color: transparent; overflow: hidden'; with: [
			html label class: 'uk-form-label'; style: 'height: 0.01px;'; with: 'F* off you bloody bot'.
			html div class: 'uk-form-controls'; style: 'height: 0.01px;'; with: [
				html ukTextInput style: 'height: 0.01px;'; class: 'name username mandatory required'; id: 'name'; on: #antibotCode of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:email'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput class: ''; id: 'email'; on: #email of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:firstName'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput class: ''; id: 'firstName'; on: #firstName of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:lastName'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput class: ''; id: 'lastName'; on: #lastName of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:password'.
			html div class: 'uk-form-controls'; with: [html ukPasswordInput class: ''; on: #password of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:passwordConfirmation'.
			html div class: 'uk-form-controls'; with: [html ukPasswordInput class: ''; on: #passwordConfirmation of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:invitationCode'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput class: ''; id: 'invitationCode'; on: #invitationCode of: self]].


"		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:captcha'.
			html div class: 'uk-form-controls'; with: [
				html div
					class: 'g-recaptcha';
					attributeAt: 'data-sitekey' put: '6LehQygTAAAAAGcZ7Xd_mNPJXnku8A0RvejzIxeM']]."

		self renderDisclaimerOn: html.

		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'register:termsAccepted'.
			html div class: 'uk-form-controls'; with: [
				html label: [
					html ukCheckbox on: #termsAccepted of: self.
					html space.
					html t: 'general:yes']]].
		
		html div class: 'uk-margin-small'; with: [
			html ukSubmitButton
				callback: [self checkForm];
				t: 'register:registerNow'.
			html space.
			html anchor
				callback: [self cancel];
				t: 'cancel'.
		].
	]