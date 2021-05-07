as yet unclassified
sendMessageToSupport
		| mailto |
		mailto := VIAHelper createMailtoUrlTo: {(self wd propertyAt: #support:email)} cc: nil bcc: nil subject: 'supportMail:subject't body: 'supportMail:body'tRaw.

	self requestContext redirectTo: mailto
