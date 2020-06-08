rendering
renderContentOn: html
	html ukContainer: [
		html form: [ 
			html textInput
				placeholder: '1.2';
				on: #searchText of: self.
			html submitButton callback: [ self goAhead ]; with: 'GO!'
		].

		self renderMatchingModulesOn: html.
		
		html devDummy: 'TASTATUR'
	]