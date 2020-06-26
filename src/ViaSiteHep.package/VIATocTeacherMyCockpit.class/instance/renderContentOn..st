rendering
renderContentOn: html
	html heading level1; t: 'teacherMyCockpit:title'.
	self renderGroupsOn: html.
	self renderSelectedGroupOn: html