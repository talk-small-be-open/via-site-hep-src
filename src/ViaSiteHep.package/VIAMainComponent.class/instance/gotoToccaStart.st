as yet unclassified
gotoToccaStart
	self session currentToccaunit: self session workingToccaunit.
	self coreComponent: (VIAToccaStartComponent new hideFinder; yourself)