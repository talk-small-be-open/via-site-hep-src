rendering
renderMatchingModulesOn: html
	modules ifNil: [ ^ self ].

	html heading sT: 'moduleFinder:results'.
	
	modules
		ifEmpty: [ html paragraph t: 'moduleFinder:noResults' ]
		ifNotEmpty: [ html render: modulesList ]