rendering
renderSelectedGroupOn: html
	selectedGroup ifNotNil: [
		invitationCommand
			ifNil: [
				html anchorButton
					callback: [ self createInvitationCode ];
					with: 'Invitation code'
			]
			ifNotNil: [
				html div: [
					html span: invitationCommand invitationCode.
					html break.
					html span: (VIAHelper germanDateAndTimeStringFor: invitationCommand expirationDateAndTime) ]
			].
	
	html ukTable: [
		selectedGroup users do: [ :each |
			html tableRow: [ html tableData: each displayName ]
		]
	]
	
	]