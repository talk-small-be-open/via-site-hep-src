hint-help
isShowHint: aUiKeyPart user: aUser
	"Check, if user needs hint"
	| propertyKey show |
	propertyKey := 'showHint:', aUiKeyPart.
	show := aUser propertyAt: propertyKey ifAbsent: [true].

	"Autohide"
"	show ifTrue: [
		aUser propertyAt: propertyKey put: false.
	]."

	^ show