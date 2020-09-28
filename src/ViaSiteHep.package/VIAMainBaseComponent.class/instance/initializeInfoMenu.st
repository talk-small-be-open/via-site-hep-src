rendering
initializeInfoMenu
	| subMenu |
	subMenu := mainMenu addSubMenu.
	subMenu
		css: 'uk-parent'.

"	mainMenu addDivider."

	subMenu mainEntry: ((VIATextMenuEntry label: 'menu:info') icon: 'menuInfo'; yourself).

	#(teacher faq press about support contact imprint) do: [ :each |
		(subMenu addEntry: ('menu:info:', each) send: #showText: to: self arg: ('page:', each))
			icon: 'menuInfoPage'.
	].

	(subMenu addEntry: 'menu:info:disclaimer' send: #openDisclaimer to: self)
		icon: 'menuInfoPage'.
