initialization
refresh
	studentsGroups := self wd findStudentsGroupsByTeacher: self teacher.
	
	"cleanunp expired command"
	studentsGroups do: [ :each | each invitationCommand ifNotNil: [ :ic |
		ic isExpired ifTrue: [each deleteInvitationCommand ] ] ]