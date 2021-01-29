initialization
initialize
	super initialize.

	self addContainerDiv.
	
	pillarLengthEstimator := VIAPrLengthEstimator new.


	"HTML Form kommt übergeordnet, damit keine Eingaben verloren gehen"
"	formDecoration := VIAFormDecoration new removeButtons.
	self addDecoration: formDecoration."
	
"	exerciserForHighlightAreas := VIAHighlightAreasV2Renderer within: self."