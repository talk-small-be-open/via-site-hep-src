actions
toggleIgnore
	exercise isIgnored: exercise isIgnored not.
	exercise isIgnored ifTrue: [ exercise beClosed ].