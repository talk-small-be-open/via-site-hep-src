as yet unclassified
initializeMainMenu
	mainMenu := VIAMenu new.
"	menuRenderer := self ifViewportSmall: [ VIAOffcanvasMenuRenderer new ] else: [ VIADropdownMenuRenderer new ]."
	
	menuRenderer := VIAOffcanvasMenuRenderer new.
	
"	(mainMenu addEntry: 'menu:start' send: #gotoHome to: self)
		icon: 'menuHome'."
