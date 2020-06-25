as yet unclassified
renderExerciser: aTaskExerciser index: anInteger on: html
	html div
		class: 'acc-bar';
		class: 'level-', model exerciseLevel asLowercase;
		with: [
			html div class: 'acc-number'; with: anInteger.
			html div class: 'acc-icon'; with: [
				aTaskExerciser task classification activityTypeTags do: [:each |
					html iconActivityType: each]
				].
			html div class: 'acc-title'; with: [
				aTaskExerciser task classification activityTypeTags do: [:each |
					html text: each text capitalized]
				separatedBy: [html space]
				].
"			html div class: 'acc-toggle'."
			html div class: 'acc-subtitle'; with: aTaskExerciser task title.
	].
	
	html div
"		class: 'hiddenTaskExercise' if: aTaskExerciser isOpen not;"
		with: [
			html render: aTaskExerciser]