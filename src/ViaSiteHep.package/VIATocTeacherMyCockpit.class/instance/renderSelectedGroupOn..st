rendering
renderSelectedGroupOn: html
	selectedGroup ifNotNil: [
		html heading level2; with: selectedGroup displayName.

		self renderInvitationCodeOn: html.

		html ukButtonGroup class: 'uk-margin-top'; with: [ 
			html anchorButton
				callback: [  ];
				t: 'teacherMyCockpit:refreshStudentList'.
			html anchorButton
				callback: [ self createInvitationCode ];
				t: 'teacherMyCockpit:createInvitationCode'
		].

		html heading level3; with: 'teacherMyCockpit:students'.
		html ukList: [
			selectedGroup users do: [ :each |
				html listItem: [
					html span: each displayName.
					html anchor
						callback: [ self removeStudent: each ];
						with: [ html iconDelete ]
				]
			]
		].
	
	]