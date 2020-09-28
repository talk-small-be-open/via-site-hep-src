actions
performSearch
	| searchResult |

	searchQuery clear.
	
	search1 ifNotBlank: [
		search1 isAllDigits ifTrue: [ self selectedToccaunit: search1 asInteger ].
		searchQuery indexCodePartial: search1 asUppercase, '.', search2 ].

	searchQuery text: searchText.
	
	searchResult := self db findWithSearchQuery: searchQuery.
	modules := searchResult results.

"	modulesList := nil."
"	modulesList := VIAModulesListComponent modules: (modules sortedBy: [ :each | each indexCode ])."

