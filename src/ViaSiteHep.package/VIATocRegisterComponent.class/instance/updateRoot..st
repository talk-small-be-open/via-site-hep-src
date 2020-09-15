rendering
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
"	anHtmlRoot javascript url: 'https://www.google.com/recaptcha/api.js?hl=it'"
	
	anHtmlRoot bodyAttributes addClass: 'wantColorBackground'