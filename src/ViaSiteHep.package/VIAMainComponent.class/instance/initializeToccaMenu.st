initialization
initializeToccaMenu
	| subMenu entry |

	subMenu := mainMenu addSubMenu.
"	mainMenu addDivider."

	subMenu mainEntry: ((VIAActionMenuEntry label: 'menu:tocca' send: #gotoToccaStart to: self)
		icon: 'menuHome'; "menuTocca"
		yourself).

	VIATocHelper toccaunits do: [ :each |
		entry := subMenu addEntry: ('menu:tocca:unit't, ' ', each asString) send: #gotoToccaunit: to: self arg: each.
		entry icon: ('unita', each asString)
	].

	entry := subMenu addEntry: 'menu:tocca:vocabolario' send: #gotoSmartVocabolario to: self.
	entry icon: 'vocabolario'.
	entry := subMenu addEntry: 'menu:tocca:palloncini' send: #gotoSmartPalloncini to: self.
	entry icon: 'palloncini'