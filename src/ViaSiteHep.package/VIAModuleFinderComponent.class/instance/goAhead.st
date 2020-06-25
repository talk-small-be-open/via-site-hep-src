actions
goAhead
	modules := self wd findPublicModulesByIndexCode: searchText.

	modules
		ifEmpty: [  ]
		ifNotEmpty: [
			modules size = 1 ifTrue: [ self gotoModule: modules anyOne. ^ self ].
		] 