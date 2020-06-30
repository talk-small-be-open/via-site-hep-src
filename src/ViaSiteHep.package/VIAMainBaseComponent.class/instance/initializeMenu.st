as yet unclassified
initializeMenu
	mainMenu := VIAMenu new.
	menuRenderer := self ifViewportSmall: [ VIAOffcanvasMenuRenderer new ] else: [ VIADropdownMenuRenderer new ].
	
	mainMenu addEntry: 'menu:start' send: #gotoHome to: self.
