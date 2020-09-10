accessing
invitationCode: anObject
	invitationCode := anObject trimBoth.
	
	invitationCommand := self wd findInvitationCommandByCode: invitationCode