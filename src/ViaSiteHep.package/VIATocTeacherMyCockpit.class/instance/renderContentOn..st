rendering
renderContentOn: html
	html ukContainer: [
		html heading level1; t: 'teacherMyCockpit:title'.
		self renderGroupsOn: html.
		self renderSelectedGroupOn: html ]