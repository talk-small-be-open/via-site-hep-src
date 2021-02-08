as yet unclassified
gotoSmartFromString: aString
	| component searchString |

	component := VIAModuleFinderComponent new.
	self coreComponent: component.
		
	aString ifBlank: [ ^ self ].

	searchString := aString.
	
	"Remove trailing dot, if on second level"
	(searchString size > 2 and: [ searchString last = $. ]) ifTrue: [
		searchString := searchString allButLast ].
	
	searchString isAllDigits ifTrue: [
		component search2: searchString.
		component goAhead.
		^ self
	].

	searchString size = 1 ifTrue: [
		component search1: searchString first asString.
		component search2: ''.
		component goAhead.
		^ self
	].
	
	((searchString at: 2) = $.)
		ifTrue: [
			component search1: searchString first asString.
			component search2: (searchString allButFirst: 2).
			component goAhead.
		]
		ifFalse: [
			component search1: ''.
			component search2: ''.
			component searchText: searchString.
			component goAhead.
		].