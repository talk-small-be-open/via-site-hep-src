rendering
renderSearchBarOn: html
	| inputId1 inputId2 |
	
	inputId1 := html nextId.
	inputId2 := html nextId.
	
	html paragraph with: [html t: 'moduleFinder:info' ].
	html form noAutocomplete; with: [
		html div class: 'searchBar'; with: [
			html textInput
				id: inputId1;
				noAutocomplete;
				class: 'searchInput1';
				placeholder: '0';
				on: #search1 of: self.
			html span class: 'dot'; with: '.'.
			html textInput
				id: inputId2;
				noAutocomplete;
				class: 'searchInput2';
				placeholder: '000';
				on: #search2 of: self.
			
			html submitButton class: 'go'; callback: [ self goAhead ]; t: 'moduleFinder:go'
	]].

	html script: ('var kbd = new Keyboard($("#', inputId1,'"), $("#', inputId2,'"))').