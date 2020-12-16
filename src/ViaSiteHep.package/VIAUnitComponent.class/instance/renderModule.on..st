rendering
renderModule: each on: html
	html span class: 'indexCode'; with: each indexCodeString.
"Im Moment nicht gewünscht html span class: 'duration'; with: [ 
		html iconDurationTag: each durationTag ]."
	html span class: 'moduleTitle'; with: each title