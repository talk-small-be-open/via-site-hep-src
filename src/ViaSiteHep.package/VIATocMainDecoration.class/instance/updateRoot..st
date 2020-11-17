as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	"Font zeitung pro"
	anHtmlRoot stylesheet url: 'https://use.typekit.net/yba2pyn.css'.

	"We use some outofthebox components"
"	anHtmlRoot javascript defer; url: '/js/outofthebox/highlight_areas_v2.js'"