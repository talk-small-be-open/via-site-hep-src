as yet unclassified
sendMessageToSupport
	self requestContext respond: [ :response |
		| mailto |
		mailto := VIAHelper createMailtoUrlTo: {(self wd propertyAt: #support:email)} cc: nil bcc: nil subject: 'Tocca a te! - Problemmeldung' body: 'Guten Tag hep-Support

Meine Meldung betrifft die App zu "Tocca a te!". Ich möchte folgendes Problem melden:

'.

		response redirectTo: mailto ]