rendering
renderPermissionsOn: html
	html heading level3; t: 'myProfile:permissions'.
	user isTeacher ifTrue: [ html div t: 'myProfile:iAmTeacher' ].
	user isStudent ifTrue: [ html div t: 'myProfile:iAmStudent' ].
	self ifBetatest: [ html div t: 'myProfile:youAreLoggedInForBetatest' ].
