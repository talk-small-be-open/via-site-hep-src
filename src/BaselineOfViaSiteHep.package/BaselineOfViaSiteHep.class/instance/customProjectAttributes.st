accessing
customProjectAttributes
	"To mark some features of the software, which then can be conditionally loaded with the metacello for: construct"

	"If we are on the VIA testing branch, then we also take base testing branch"
	Branch = 'testing' ifTrue: [ ^ #(branchTesting) ].
	
	^ #(branchMaster)