rendering
renderContentOn: html
	html ukContainer id: (containerId := html nextId); with: [
		self renderSearchBarOn: html.

		self renderMatchingModulesOn: html.

"		html select
			list: VIATocHelper toccaunits;
			labels: [ :each | VIATocHelper toccaunitLabel: each ];
			on: #selectedToccaunit of: self."
"		(1 to: 9) groupsOf: 3 atATimeDo: [ :a :b :c |"

		self renderKeyboardInputOn: html.
	].

	html script: 'var kbd;'.
	html scriptDefer: ('kbd = new Keyboard("', containerId, '")').