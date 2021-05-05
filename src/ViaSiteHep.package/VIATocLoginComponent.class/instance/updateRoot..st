updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	anHtmlRoot bodyAttributes addClass: 'wantColorBackground'.
	
	"Login credentials für hello.js"
"	self wd hasSocialLogin ifTrue: [
		anHtmlRoot javascript url: 'https://cdnjs.cloudflare.com/ajax/libs/hellojs/1.18.7/hello.all.min.js'.
		anHtmlRoot javascript with: self wd helloJavascript]"