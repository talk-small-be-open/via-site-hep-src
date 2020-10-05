initialization
initialize
	super initialize.

	"Von User voreinstellen"
	selectedToccaunit := self session currentToccaunit.
	search1 := selectedToccaunit ifNil: [ '' ] ifNotNil: [ :i | i asString].
	search2 := ''.
	
	searchQuery := VIAModuleSearchQuery new.
	searchQuery website: self website.

	self addForm removeButtons.
	
	self addContainerDiv.