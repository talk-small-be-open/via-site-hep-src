actions
showAcceptTermsDialog
	| dialog terms |
	terms := VIADisclaimerComponent new
		beEmbedded;
		yourself.

	dialog := (VIAConfirmationComponent new
		confirmationText: 'general:yes';
		cancelText: 'general:no';
		message: 'main:pleaseAcceptTerms';
		component: terms;
		addCenterContainer;
		onConfirm: [ self currentUser beTermsAccepted ];
		onReject: [ self logout ];
		yourself).
			
	self coreComponentThenGotoHome: dialog