as yet unclassified
initialize

	super initialize.

	"Tweak: For the moment we pretend mobile only"
"	self session viewportWidth: 600."
	
	flashMessages := OrderedCollection new.
	backtraced := Array new: 1.
	
	self initializeMenus.
	
"	self addDecoration: VIAMainDecoration new."
	self gotoFirstScreen