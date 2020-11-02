rendering
renderInvitationCodeOn: html
	invitationCommand ifNotNil: [
		| url |
		url := invitationCommand url.
		html div: [
			html heading level3; with: 'teacherMyCockpit:invitationCode'.
			html anchor
				class: 'invitationCode';
				callback: [ self showInvitationCode ];
				with: invitationCommand invitationCode.
			html space.
			html sT: 'teacherMyCockpit:invitationCodeExpiryTime'.
			html space.
			html span: (VIAHelper germanDateAndTimeStringFor: invitationCommand expirationDateAndTime) ].
		html div class: 'uk-margin-top'; with: [
			html iconShare; space.
			html anchor
				url: ((WAUrl absolute: 'https://wa.me/') addField: 'text' value: url);
				target: '_blank';
				with: 'WhatsApp'.
			html space.
			html iconEmail; space.
			html anchor
				url: ('mailto:?subject=Tocca%20a%20te&body=', url urlEncoded);
				with: 'E-Mail'.
"			html div: url."
		]
	].
