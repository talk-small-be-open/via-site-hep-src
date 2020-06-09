rendering
renderContentOn: html
	html ukContainer: [
		html paragraph: 'Hilfe: Tippe einen Anfang der Übungsnummer und suche. Oder tippe die ganze Nummer. Oder suche nach "P" für Palloncini. Oder, oder ...'.
		html form noAutocomplete; with: [ 
			html textInput
				noAutocomplete;
				class: 'searchInput';
				placeholder: '1.2';
				on: #searchText of: self.
			html submitButton callback: [ self goAhead ]; t: 'moduleFinder:go'
		].

		self renderMatchingModulesOn: html.
		
		html devDummy: 'TASTATUR'
	]