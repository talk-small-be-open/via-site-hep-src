initialization
initializeSmartFromString: aString
	self initialize.

	"Vermutlich obsolete, da von aussen gesteuert"
	
	aString ifBlank: [ ^ self ].
	
"	aString size = 1 ifTrue: [
		search1 := aString.
		self performSearch.
		^ self
	]."
	
	
	aString isAllDigits ifTrue: [
		search2 := aString.
		self goAhead.
		^ self
	].
	
	
	((aString at: 2) = $.)
		ifTrue: [
			search1 := aString first asString.
			search2 := aString allButFirst: 2.
			self goAhead.
		]
		ifFalse: [
			searchText := aString.
			search1 := ''.
			search2 := ''.
			self performSearch.
		].
	
