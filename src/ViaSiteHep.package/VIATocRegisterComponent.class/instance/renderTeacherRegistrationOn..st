rendering
renderTeacherRegistrationOn: html
	html anchor
		callback: [ self registerAsTeacher ];
		t: 'register:registerAsTeacher'