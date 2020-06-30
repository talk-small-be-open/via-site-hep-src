rendering
initializeInfoMenu
	| subMenu |
	subMenu := mainMenu addSubMenu.
	mainMenu addDivider.

	subMenu mainEntry: (VIATextMenuEntry label: 'menu:info').

	#(teacher faq press about support contact) do: [ :each |
		subMenu addEntry: 'menu:info:', each send: #showText: to: self arg: 'page:', each.
	]