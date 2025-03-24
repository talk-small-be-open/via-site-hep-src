as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	self updateRootEssentials: anHtmlRoot.
	self updateRootStandardJsUiLibs: anHtmlRoot.
	self updateRootCookieConsent: anHtmlRoot.
	self updateRootFontawesome: anHtmlRoot.
	self updateRootDefaultUi: anHtmlRoot.
	self updateRootSite: anHtmlRoot.
	
	"OPTIMIZE: Performance?"
	self updateRootPwa: anHtmlRoot.
	"Font zeitung pro"
	anHtmlRoot stylesheet url: 'https://use.typekit.net/yba2pyn.css'.

	"We use some outofthebox components"
"	anHtmlRoot javascript defer; url: '/js/outofthebox/highlight_areas_v2.js'"