updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	anHtmlRoot javascript defer; url: '/site/js/search.js'