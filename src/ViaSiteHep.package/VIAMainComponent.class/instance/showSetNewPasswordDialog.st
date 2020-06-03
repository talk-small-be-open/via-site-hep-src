actions
showSetNewPasswordDialog
	| component |
	component := VIASetPasswordComponent new
		addDecoration: VIACenterContainerDecoration new;
		yourself.
		
	self show: component  onAnswer: [:newPassword |
		self currentUser password: newPassword.
"		self logInfo: 'password reset'."
		self flashMessage: #main:successfullySetNewPassword]