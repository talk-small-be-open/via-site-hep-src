as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot bodyAttributes addClass: 'public'.
	
	self ifProduction: [
		anHtmlRoot script beJavascript; with: self googleAnalyticsJs].
	
	"Login credentials für hello.js"
	self wd hasSocialLogin ifTrue: [
		anHtmlRoot script beJavascript; with: self wd helloJavascript ]