as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot bodyAttributes addClass: 'loggedIn'.
	
	self ifProduction: [
		anHtmlRoot javascript defer; with: self googleAnalyticsJs].