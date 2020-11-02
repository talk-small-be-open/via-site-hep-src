rendering
initializeLoginMenu
	| subMenu |
	subMenu := mainMenu addSubMenu.
	mainMenu addDivider.

	subMenu mainEntry: ((VIAActionMenuEntry label: 'menu:login' action: [ self openLoginDialog ])
		icon: 'login';
		yourself).
	subMenu css: 'loginMenu'.