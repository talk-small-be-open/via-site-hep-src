*ViaSiteHep
isFacoltativo
	self levelTag ifNotNil: [:lt | ^ lt code = #l2 ].
	
	^ false