initialization
initialize
	super initialize.

	"TODO: Von Session oder User voreinstellen"
	selectedToccaunit := self currentUser propertyAt: #preferredToccaunit.
	search1 := selectedToccaunit ifNil: [ '' ] ifNotNil: [ :i | i asString].
	search2 := ''.
	
	searchQuery := VIAModuleSearchQuery new.
	searchQuery website: self website.

	self addContainerDiv