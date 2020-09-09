rendering
renderSearchBarOn: html
	
	html paragraph with: [html t: 'moduleFinder:info' ].
	html div class: 'searchBar'; with: [
		html div: [
			html hiddenInput
				class: 'input1';
				noAutocomplete;
				on: #search1 of: self.
			html hiddenInput
				class: 'input2';
				noAutocomplete;
				on: #search2 of: self.
			html span: [
				html t: 'moduleFinder:searchNumber'.
				html text: ': '].
			html span
				withTab;
				class: 'searchInput searchInput1'.
			html span class: 'dot'; with: '.'.
			html span
				withTab;
				class: 'searchInput searchInput2' ].

		html div: [
			html span: [ 
				html t: 'moduleFinder:searchText'.
				html text: ': '].
			html textInput
				noAutocomplete;
				class: 'searchInput searchInputText';
				placeholder: '...';
				on: #searchText of: self.
			
			html submitButton class: 'go'; callback: [ self goAhead ]; t: 'moduleFinder:go'
	]].
