rendering
renderContentOn: html

	html heading: [
		html text: 'Leseansicht'.
		html space.
		html text: self user fullName.
	].

"	self renderNavigationOn: html."
	self renderTitleOn: html.
	self renderBodyOn: html.
	self renderFooterOn: html.
"	self renderTeacherAreaOn: html."
"	self renderBottomNavigationOn: html."