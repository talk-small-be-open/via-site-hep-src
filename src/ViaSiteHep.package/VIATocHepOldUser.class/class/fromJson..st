instance creation
fromJson: aString
	| data |
	data := VIAHelper fromJson: aString.
	^ self fromDictionary: data