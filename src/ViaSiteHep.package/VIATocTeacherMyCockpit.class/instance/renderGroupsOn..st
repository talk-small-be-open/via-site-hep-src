rendering
renderGroupsOn: html
	html heading level2; t: 'teacherMyCockpit:studentGroups'.
	html anchorButton
		callback: [ self createStudentsGroup ];
		t: 'teacherMyCockpit:createStudentGroups'.
	html ukList class: 'studentsGroups'; with: [
		studentsGroups do: [ :each |
			html listItem: [
				html anchor
					callback: [ self selectGroup: each ];
					with: each displayName.
				html anchor
					callback: [ self deleteGroup: each ];
					with: [ html iconDelete ] ] ]
	]