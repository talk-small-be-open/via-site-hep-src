rendering
renderContentOn: html
	self renderNavigationOn: html.
	self renderTitleOn: html.
	self renderBodyOn: html.
	self renderFooterOn: html.
"	self renderTeacherAreaOn: html."
	self renderBottomNavigationOn: html.