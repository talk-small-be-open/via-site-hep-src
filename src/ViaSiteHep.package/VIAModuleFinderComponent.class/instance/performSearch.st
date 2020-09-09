actions
performSearch
	| searchResult |

	searchQuery clear.
	
	search1 isAllDigits ifTrue: [ self selectedToccaunit: search1 asInteger ].
	
	search1 ifNotBlank: [
		searchQuery indexCodePartial: search1, '.', search2 ].

	searchQuery text: searchText.
	
	searchResult := self db findWithSearchQuery: searchQuery.
	modules := searchResult results.

"	modulesList := nil."
"	modulesList := VIAModulesListComponent modules: (modules sortedBy: [ :each | each indexCode ])."

