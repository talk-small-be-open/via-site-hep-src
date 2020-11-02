actions
removeStudent: aStudent
	(self confirmYesNo: 'teacherMyCockpit:removeStudentFromGroupQM') ifTrue: [
		selectedGroup removeUser: aStudent.
		self refresh]