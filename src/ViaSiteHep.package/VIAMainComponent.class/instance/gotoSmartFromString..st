as yet unclassified
gotoSmartFromString: aString
	| component |

	component := VIAModuleFinderComponent new.
	
	self coreComponent: component onAnswer: [ :module |
		component hasManyResults ifTrue: [ 
			self gotoModuleWithBack: module
		] ifFalse: [ 
			self gotoModule: module
		]
	].

	component searchSmartFromString: aString.