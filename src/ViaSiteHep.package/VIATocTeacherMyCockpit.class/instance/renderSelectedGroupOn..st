rendering
renderSelectedGroupOn: html
	self hasSelection ifTrue: [
		| isPristine |
		
		isPristine := (self hasInvitationCommand not and: [selectedGroup users isEmpty]).
		
		html heading level2; with: selectedGroup displayName.

		isPristine ifTrue: [
			html div class: 'uk-margin'; pT: 'teacherMyCockpit:noStudents'
		].

		self renderInvitationCodeOn: html.

		isPristine ifFalse: [
			html heading level3; t: 'teacherMyCockpit:students'.
				html div class: 'uk-margin'; with: [ 
					html anchor
						callback: [  ];
						with: [
							html iconRefresh.
							html sT: 'teacherMyCockpit:refreshStudentList']].
				selectedGroup users ifEmpty: [ html ukLabel sT: 'teacherMyCockpit:noStudents' ] ifNotEmpty: [
					html ukList: [
						selectedGroup users do: [ :each |
							html listItem: [
								html span: each displayName.
								html anchor
									callback: [ self removeStudent: each ];
									with: [ html iconDelete ]
							]
						]]
				].
		]]