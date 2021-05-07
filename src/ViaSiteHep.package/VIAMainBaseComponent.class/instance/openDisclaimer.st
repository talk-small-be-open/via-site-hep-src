as yet unclassified
openDisclaimer

"	component := VIADisclaimerComponent new.
	self showWideLightbox: component."
	
	(self wd propertyAt: #disclaimer:url) ifNotBlank: [ :url |
		self requestContext redirectTo: url ]