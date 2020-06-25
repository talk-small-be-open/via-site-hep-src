actions
deleteGroup: aGroup
	(self confirmYesNo: 'teacherMyCockpit:deleteStudentsGroupQM') ifTrue: [
		self wd deleteUserGroup: aGroup.
		self refresh]