actions
goAhead
	modules := self wd findModulesByIndexCode: searchText.

	modules
		ifEmpty: [  ]
		ifNotEmpty: [
			modules size = 1 ifTrue: [ self app gotoModule: modules anyOne. ^ self ].
			
			
		] 