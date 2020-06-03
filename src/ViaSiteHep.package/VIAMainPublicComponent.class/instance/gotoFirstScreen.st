as yet unclassified
gotoFirstScreen
	
	"Modul von URL anpeilen?"
	self session gotoModule ifNotNil: [:m |
		self session clearGotoModule.
		self gotoModule: m. ^self].
	
	super gotoFirstScreen