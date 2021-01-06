rendering
renderContentOn: html
	html ukContainer: [
		html heading level1; t: 'teacherMyCockpit:title'.
		self hasSelection ifTrue: [
			html anchorButton
				callback: [ self gotoOverview ];
				with: [
					html iconBack; space.
					html sT: 'teacherMyCockpit:backToOverview'].
			self renderSelectedGroupOn: html
		] ifFalse: [
			self renderGroupsOn: html ]]