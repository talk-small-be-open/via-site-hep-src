rendering
renderGroupsOn: html
	html heading level2; t: 'teacherMyCockpit:studentGroups'.
	html anchorButton
		callback: [ self createStudentsGroup ];
		t: 'teacherMyCockpit:createStudentGroups'.
	html ukTable: [
		studentsGroups do: [ :each |
			html tableRow: [
				html tableData: [
					html anchor
						callback: [ self selectGroup: each ];
						with: each displayName].
				html tableData: [
					html anchor
						callback: [ self deleteGroup: each ];
						with: [ html iconDelete ] ] ]
	]]