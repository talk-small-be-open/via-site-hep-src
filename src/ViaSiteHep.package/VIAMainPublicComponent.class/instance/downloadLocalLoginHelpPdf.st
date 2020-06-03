actions
downloadLocalLoginHelpPdf
	| file |
	file := VIALocalFileReference new
		fileBasePath: (self db propertyAt: #fileStoragePath);
		fileRelativePath: 'files/docs';
		fileName: '321via_login_locale.pdf';
		yourself.

	self sendFileToBrowser: file