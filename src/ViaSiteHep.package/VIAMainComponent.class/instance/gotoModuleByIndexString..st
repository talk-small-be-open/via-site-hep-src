actions
gotoModuleByIndexString: aString
	| module |
	
	module := self wd findModuleByIndexCode: aString.

	module ifNotNil: [
		self gotoSmartModule: module]