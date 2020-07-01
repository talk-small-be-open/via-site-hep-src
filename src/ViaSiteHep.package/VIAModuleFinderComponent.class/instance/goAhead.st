actions
goAhead
	| searchResult |

	search1 isAllDigits ifTrue: [ self selectedToccaunit: search1 asInteger ].
	
	searchQuery indexCodePartial: search1, '.', search2.
	
	searchResult := self db findWithSearchQuery: searchQuery.
	modules := searchResult results.

	modulesList := nil.
	
	modules
		ifEmpty: [  ]
		ifNotEmpty: [
			modules size = 1
				ifTrue: [ self gotoModule: modules anyOne. ^ self ]
				ifFalse: [ modulesList := VIAModulesListComponent modules: (modules sortedBy: [ :each | each indexCode ]). ]
		] 