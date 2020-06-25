rendering
initializeMenu
	super initializeMenu.
	
	mainMenu := VIAMenu new.

	mainMenu addEntry: 'menu:searchModule' send: #gotoSearchModule to: self.
	mainMenu addDivider.

	mainMenu addEntry: 'menu:myPortfolio' send: #gotoMyPortfolio to: self.
	mainMenu addDivider.
		
	self ifTeacher: [
		mainMenu addEntry: 'menu:myTeacherCockpit' send: #gotoMyTeacherCockpit to: self.
		mainMenu addDivider.
	].

	self initializeInfoMenu.
	self initializeAccountMenu.