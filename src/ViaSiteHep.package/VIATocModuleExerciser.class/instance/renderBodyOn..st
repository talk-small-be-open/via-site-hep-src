rendering
renderBodyOn: html
	html div class: 'moduleBody'; with: [
		exerciserComponents withIndexDo: [:each :index |
			self renderExerciser: each index: index on: html]

"		html render: exerciserComponents first"
	].