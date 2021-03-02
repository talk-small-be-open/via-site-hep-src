initialization
initializeMainMenu
	| userLabel |
	super initializeMainMenu.


	self initializeToccaMenu.

	mainMenu addDivider.
	
	(mainMenu addEntry: 'menu:myPortfolio' send: #gotoMyPortfolio to: self)
		icon: 'portfolio'.

	mainMenu addDivider.

	userLabel := self currentUser fullName.
	(mainMenu addEntry: userLabel send: #gotoMyProfile to: self)
		icon: 'user'.

	mainMenu addDivider.

	self ifTeacher: [
		(mainMenu addEntry: 'menu:myTeacherCockpit' send: #gotoMyTeacherCockpit to: self)
			icon: 'menuTeacher'.
		mainMenu addDivider.
	].

	
"	mainMenu addEntry: 'menu:searchModule' send: #gotoSearchModule to: self.
	mainMenu addDivider."

	self initializeInfoMenu.

	mainMenu addDivider.

	(mainMenu addEntry: 'menu:messageToSupport' send: #sendMessageToSupport to: self)
		icon: 'menuSupport'.
		
	(mainMenu addEntry: 'menu:logout' send: #logout to: self)
		icon: 'logout'