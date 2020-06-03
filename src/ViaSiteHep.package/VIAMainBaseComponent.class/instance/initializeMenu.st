as yet unclassified
initializeMenu
	mainMenu := VIAMenu new.
	menuRenderer := self ifViewportSmall: [ VIAOffcanvasMenuRenderer new ] else: [ VIADropdownMenuRenderer new ]