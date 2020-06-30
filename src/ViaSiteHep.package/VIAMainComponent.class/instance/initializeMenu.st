rendering
initializeMenu
	| userLabel |
	super initializeMenu.

	self ifTeacher: [
		mainMenu addEntry: 'menu:myTeacherCockpit' send: #gotoMyTeacherCockpit to: self.
		mainMenu addDivider.
	].

	self initializeToccaMenu.
	
	mainMenu addEntry: 'menu:myPortfolio' send: #gotoMyPortfolio to: self.
	mainMenu addDivider.

	userLabel := self currentUser fullName.
"	self ifTeacher: [
		userLabel := userLabel,	' (', ('menu:iAmTeacher't), ')' ]."
				
	mainMenu addEntry: userLabel send: #gotoMyProfile to: self.

	
"	mainMenu addEntry: 'menu:searchModule' send: #gotoSearchModule to: self.
	mainMenu addDivider."

	self initializeInfoMenu.

	mainMenu addEntry: 'menu:logout' send: #logout to: self.
