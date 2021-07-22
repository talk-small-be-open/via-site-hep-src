as yet unclassified
gotoFirstScreen
	
	"Modul von URL anpeilen?"
	"Login muss manuell ausgelöst werden, wegen OAuth. Deshalb hier nichts machen,
	weil Loginbutton auf der Startseite ist.
	OPTIMIZE: Login aktiv auslösen?"
"	self session gotoModule ifNotNil: [:m |
		self gotoModule: m taskNumber: self session gotoTask.
		self session clearGotoModule.
		^self]."
	
	super gotoFirstScreen