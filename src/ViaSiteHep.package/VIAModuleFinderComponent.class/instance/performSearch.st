actions
performSearch
	| searchResult |

	searchQuery clear.
	
	search1 ifNotBlank: [
		search1 isAllDigits ifTrue: [ self selectedToccaunit: search1 asInteger ].
		
		search2 ifBlank: [
			searchQuery indexCodePartial: search1 asUppercase, '.'
		] ifNotBlank: [
			searchQuery indexCode: search1 asUppercase, '.', search2 ]
	].

	searchQuery text: searchText.
	
	searchResult := self db findWithSearchQuery: searchQuery.
	modules := searchResult results