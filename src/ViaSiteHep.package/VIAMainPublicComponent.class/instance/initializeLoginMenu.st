rendering
initializeLoginMenu
	| subMenu |
	mainMenu addDivider.
	subMenu := mainMenu addSubMenu.

	subMenu mainEntry: ((VIAActionMenuEntry label: 'menu:login' action: [ self openLoginDialog ])
		icon: 'login';
		yourself).
	subMenu css: 'loginMenu'.