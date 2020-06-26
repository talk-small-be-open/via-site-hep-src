rendering
renderContentOn: html
	| inputId |
	
	inputId := html nextId.
	
	html ukContainer: [
		html paragraph: 'Hilfe: Tippe einen Anfang der Übungsnummer und suche. Oder tippe die ganze Nummer. Oder suche nach "P" für Palloncini. Oder, oder ...'.
		html form noAutocomplete; with: [ 
			html textInput
				id: inputId;
				noAutocomplete;
				class: 'searchInput';
				placeholder: '1.2';
				on: #searchText of: self.
			html submitButton callback: [ self goAhead ]; t: 'moduleFinder:go'
		].

		self renderMatchingModulesOn: html.

		html select
			list: VIATocHelper toccaunits;
			labels: [ :each | VIATocHelper toccaunitLabel: each ];
			on: #selectedToccaunit of: self.
"		(1 to: 9) groupsOf: 3 atATimeDo: [ :a :b :c |"
		html ukGrid class: 'uk-grid-small uk-child-width-1-3'; with: [
			(1 to: 9) do: [ :each |
				html span
					onClick: 'appendInput()';
					class: 'button keyboardButton';
					with: each
		]]
	]