actions
goAhead
	self performSearch.
	
	modules ifNotEmpty: [
		modules size = 1
			ifTrue: [ self gotoModule: modules anyOne. ^ self ]
			ifFalse: [
				self showWithBack: (VIAModulesListComponent modules: (modules sortedBy: [ :each | each indexCode ] ) ).
 ]]