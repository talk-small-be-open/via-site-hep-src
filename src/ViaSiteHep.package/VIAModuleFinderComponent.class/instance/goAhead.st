actions
goAhead
	self performSearch.
	
	modules ifNotEmpty: [
		modules size = 1
			ifTrue: [ self gotoModule: modules anyOne. ^ self ]
			ifFalse: [
				| result |
				result := (VIAModulesListComponent modules: (modules sortedBy: [ :each | each indexCode ] ) ).
				result titleKey: 'moduleFinder:results'.
				self show: result.
 ]]