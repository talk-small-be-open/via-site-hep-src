rendering
renderContentOn: html
	html ukContainer id: (containerId := html nextId); with: [
"		self renderSearchBarOn: html."

		self renderMatchingModulesOn: html.

"		self renderKeyboardInputOn: html."
	].

"	html script: 'var kbd;'.
	html scriptDefer: ('kbd = new Keyboard(""', containerId, '"")')."