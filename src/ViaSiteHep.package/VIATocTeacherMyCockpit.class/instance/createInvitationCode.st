rendering
createInvitationCode
	invitationCommand := VIAInviteStudentToGroupCommand new
		userGroup: selectedGroup;
		website: self website;
		store;
		yourself.

	self showInvitationCode