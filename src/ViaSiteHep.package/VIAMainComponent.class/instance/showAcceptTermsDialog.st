actions
showAcceptTermsDialog
	| dialog |
	dialog := (VIAConfirmationComponent new
		confirmationText: 'general:yes';
		cancelText: 'general:no';
		message: 'main:pleaseAcceptTerms';
		onConfirm: [ self currentUser beTermsAccepted ];
"		onReject: [ self gotoHome ];"
		yourself).
			
	self coreComponentThenGotoHome: dialog.

"	component := VIASetPasswordComponent new
		addDecoration: VIACenterContainerDecoration new;
		yourself."
		
"	self show: component  onAnswer: [:newPassword |
		self currentUser password: newPassword.
		self flashMessage: #main:successfullySetNewPassword]"