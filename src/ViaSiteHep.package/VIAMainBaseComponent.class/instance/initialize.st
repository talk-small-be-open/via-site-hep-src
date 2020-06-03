as yet unclassified
initialize

	super initialize.

	"Tweak: For the moment we pretend mobile only"
	self session viewportWidth: 600.
	
	flashMessages := OrderedCollection new.
	self initializeMenu.
	
"	self addDecoration: VIAMainDecoration new."
	self gotoFirstScreen