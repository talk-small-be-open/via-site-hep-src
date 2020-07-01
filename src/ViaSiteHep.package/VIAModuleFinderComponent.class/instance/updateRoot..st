updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	anHtmlRoot javascript url: '/site/js/search.js'