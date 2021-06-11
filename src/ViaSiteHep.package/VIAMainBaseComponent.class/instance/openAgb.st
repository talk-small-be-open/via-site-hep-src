as yet unclassified
openAgb

	(self wd propertyAt: #agb:url) ifNotBlank: [ :url |
		self requestContext redirectTo: url ]