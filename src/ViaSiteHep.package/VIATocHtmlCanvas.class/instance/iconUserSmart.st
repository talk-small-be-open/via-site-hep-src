icons
iconUserSmart
	^ self
		ifTeacher: [ self iconUserTeacher ]
		else: [ self iconUser ]