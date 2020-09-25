as yet unclassified
gotoSmartFromString: aString
	| component |

	component := VIAModuleFinderComponent new.
	self coreComponent: component.
		
	aString ifBlank: [ ^ self ].
	
	aString isAllDigits ifTrue: [
		component search2: aString.
		component goAhead.
		^ self
	].

	aString size = 1 ifTrue: [
		component search1: aString first asString.
		component search2: ''.
		component goAhead.
		^ self
	].
	
	((aString at: 2) = $.)
		ifTrue: [
			component search1: aString first asString.
			component search2: (aString allButFirst: 2).
			component goAhead.
		]
		ifFalse: [
			component search1: ''.
			component search2: ''.
			component searchText: aString.
			component goAhead.
		].