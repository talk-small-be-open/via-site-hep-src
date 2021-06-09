actions
goAhead
	self performSearch.
	
	modules ifNotEmpty: [
		self hasManyResults
			ifFalse: [ self gotoModule: modules anyOne. ^ self ]
			ifTrue: [
				modulesList := (VIAModulesListComponent modules: (modules sortedBy: [ :each | each indexCode ] ) ).
"				result titleKey: 'moduleFinder:results'."
				modulesList onAnswer: [ :module |
					module ifNotNil: [ self gotoModule: module ]
				]
 ]]