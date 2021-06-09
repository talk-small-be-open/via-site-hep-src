as yet unclassified
searchSmartFromString: aString
	| searchString |
		
	aString ifBlank: [ ^ self ].

	searchString := aString.
	
	"Remove trailing dot, if on second level"
	(searchString size > 2 and: [ searchString last = $. ]) ifTrue: [
		searchString := searchString allButLast ].
	
	searchString isAllDigits ifTrue: [
		self search2: searchString.
		self goAhead.
		^ self
	].

	searchString size = 1 ifTrue: [
		self search1: searchString first asString.
		self search2: ''.
		self goAhead.
		^ self
	].
	
	((searchString at: 2) = $.)
		ifTrue: [
			self search1: searchString first asString.
			self search2: (searchString allButFirst: 2).
			self goAhead.
		]
		ifFalse: [
			self search1: ''.
			self search2: ''.
			self searchText: searchString.
			self goAhead.
		].