signalling
signalError: aString
	
	self logError: ('hep user error: ', aString).
	
	VIATocHepUserError signal: aString