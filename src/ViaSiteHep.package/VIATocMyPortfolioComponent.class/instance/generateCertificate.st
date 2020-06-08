actions
generateCertificate
	| fileReference |
	fileReference := self generateCertificatePdf.
	self sendFileToBrowser: fileReference named: 'Certificato.pdf'