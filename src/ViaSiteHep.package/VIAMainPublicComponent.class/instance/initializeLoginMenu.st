rendering
initializeLoginMenu
	| subMenu entry |
	subMenu := mainMenu addSubMenu.
	mainMenu addDivider.

	subMenu mainEntry: (VIAActionMenuEntry label: 'menu:login' action: [ self openLoginDialog ]).
	subMenu css: 'loginMenu'.

"	subMenu addEntry: 'menu:localLogin' send: #openLocalLoginDialog to: self."
"	(subMenu addEntry: 'menu:downloadLoginHelp' send: #downloadLocalLoginHelpPdf to: self) icon: #help."

"				self ifDevelopment: [
					html listItem: [
						self renderQuickLoginOn: html]]]]]"