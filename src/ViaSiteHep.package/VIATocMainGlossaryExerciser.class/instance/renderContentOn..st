rendering
renderContentOn: html
	"Simplest version of UI"
	
	html ukContainer: [
		html heading
			level2;
			class: 'moduleTitle';
			with: model title.

		html div class: 'moduleBody'; with: [
			exerciserComponents do: [ :each |
				html div
					class: 'taskExercise';
					class: 'noTitleTaskExercise';
					with: each
			]
		]
	]