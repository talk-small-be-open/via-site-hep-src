as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot bodyAttributes addClass: 'loggedIn'.
	
	self ifProduction: [
		anHtmlRoot script beJavascript; with: self googleAnalyticsJs].