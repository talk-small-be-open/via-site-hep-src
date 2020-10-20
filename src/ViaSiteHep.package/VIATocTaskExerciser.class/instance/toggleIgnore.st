actions
toggleIgnore
	exerciseGSRENAME isIgnored: exerciseGSRENAME isIgnored not.
	exerciseGSRENAME isIgnored ifTrue: [ exerciseGSRENAME beClosed ].