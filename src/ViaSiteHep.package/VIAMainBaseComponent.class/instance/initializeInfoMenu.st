rendering
initializeInfoMenu
	| subMenu |
	subMenu := mainMenu addSubMenu.
	mainMenu addDivider.

	subMenu mainEntry: (VIATextMenuEntry label: 'menu:info').
	
	subMenu addEntry: 'menu:info:about' send: #showText: to: self arg: 'page:about'.
	subMenu addEntry: 'menu:info:contact' send: #showText: to: self arg: 'page:contact'.