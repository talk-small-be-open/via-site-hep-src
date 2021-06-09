*ViaSiteHep
isShowHint: aUiKeyPart
	"Check, if user needs hint"
	| propertyKey show |
	propertyKey := 'showHint:', aUiKeyPart.
	show := self propertyAt: propertyKey ifAbsent: [true].

	^ show