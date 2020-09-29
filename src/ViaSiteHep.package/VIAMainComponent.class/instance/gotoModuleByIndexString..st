actions
gotoModuleByIndexString: aString
	| module |
	
	module := self wd findPublicModuleByIndexCode: aString.

	module ifNotNil: [
		self gotoSmartModule: module]