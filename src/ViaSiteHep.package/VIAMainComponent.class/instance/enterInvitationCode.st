actions
enterInvitationCode
	| component |
	component := VIATocMyProfileComponent new.

	self coreComponent: component.
	
	"Hm, seaside hackish?"
	component enterInvitationCode