actions
showRequestForInvitationCode
	| dialog |
	dialog := (VIAConfirmationComponent new
		confirmationText: 'general:yes';
		cancelText: 'general:no';
		message: 'main:doYouHaveAnInvitationCodeQM';
		onConfirm: [ self enterInvitationCode ];
"		onReject: [ self gotoHome ];"
		yourself).
			
	self coreComponentThenGotoHome: dialog