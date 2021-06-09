actions
gotoModuleByCommandString: aString
	"1.2.3/tasknumber"
	| module index taskNumber |
	
	index := aString copyUpTo: $/.
	taskNumber := (aString copyAfter: $/) asInteger.
	module := self wd findModuleByIndexCode: index.

	module ifNotNil: [
		self gotoModule: module taskNumber: taskNumber]