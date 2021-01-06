rendering
renderInvitationCodeOn: html
	self hasInvitationCommand ifFalse: [
		html anchorButton
			callback: [ self createInvitationCode ];
			with: [
				html iconAdd; space.
				html sT: 'teacherMyCockpit:createInvitationCode']
	] ifTrue: [
		| url mailto whatsapp |
		url := invitationCommand url.
		
		mailto := (VIAHelper createMailtoUrlTo: nil cc: nil bcc: nil subject: 'Einladung zu "Tocca a te!"' body: ('Einladungslink zu "Tocca a te!":

', url)).
		whatsapp := ((WAUrl absolute: 'https://wa.me/') addField: 'text' value: url).
		
		html div: [
			html heading level3; with: 'teacherMyCockpit:invitationCode'.
			html div class: 'uk-margin'; pT: 'teacherMyCockpit:invitationCodeInfo'.
			html span
				class: 'invitationCode';
				with: invitationCommand invitationCode.
			html space.
			invitationCommand isExpired ifTrue: [
				html ukLabelWarning: 'teacherMyCockpit:invitationCodeIsExpired' 
			] ifFalse: [
				html sT: 'teacherMyCockpit:invitationCodeExpiryTime'.
				html space.
				html span: (VIAHelper germanDateAndTimeStringFor: invitationCommand expirationDateAndTime).
				html space.
				html anchor
					callback: [ self deleteInvitationCode ];
					with: [ html iconDelete ]
			]
		].

		html div class: 'uk-margin-top'; pT: 'teacherMyCockpit:invitationCodeSharing'.
		html div: [
			html iconShare; space.
			html anchor
				url: whatsapp;
				target: '_blank';
				with: 'WhatsApp'.
			html space; space.
			html iconEmail; space.
			html anchor
				url: mailto;
				t: 'general:email'.
			html space.
			html iconPreview.
			html anchor
				callback: [ self showInvitationCode ];
				t: 'teacherMyCockpit:showBigCode'.
			
"			html div: url."
		]
	].
