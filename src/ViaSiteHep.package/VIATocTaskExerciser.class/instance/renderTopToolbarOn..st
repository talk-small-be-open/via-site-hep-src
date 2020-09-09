rendering
renderTopToolbarOn: html
"	html div class: 'topToolbar'; with: [
		self module isIgnoreTaskAllowed ifTrue: [
			html bigAnchorButton
				class: 'ignoreTask';
				callback: [self toggleIgnore ];
				t: (exercise isIgnored ifTrue: ['exerciser:deignoreTask'] ifFalse: ['exerciser:ignoreTask']).
		]]"