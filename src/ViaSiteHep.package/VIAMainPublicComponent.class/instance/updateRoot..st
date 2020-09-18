as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot bodyAttributes addClass: 'public'.
	
	self ifProduction: [
		anHtmlRoot javascript defer; with: self googleAnalyticsJs].
	
	"Login credentials für hello.js"
	self wd hasSocialLogin ifTrue: [
		anHtmlRoot javascript defer; with: self wd helloJavascript ]