rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	| id |
	id := html nextId.
	html div
		ukToggleTarget: ('#', id) class: 'hiddenTaskExercise' "animation: 'uk-animation-fade'";
		onClick: (html jQuery ajax
			callback: [aTaskExerciser toggleOpen]);
		class: 'accBar';
"		class: 'ignored' if: aTaskExerciser exercise isIgnored;"
"		class: 'level-', model exerciseLevel asLowercase;"
		with: [
"			html span class: 'accNumber'; with: anInteger."
"			html div class: 'acc-icon'; with: [
				aTaskExerciser task classification activityTypeTags do: [:each |
					html iconActivityType: each]
				]."
			html heading level2; class: 'accTitle'; with: aTaskExerciser task title.
			html span class: 'accToggle'; with: [ html iconDropdown ].
"			html div class: 'uk-visible@s acc-subtitle'; with: aTaskExerciser task title."
	"		self renderScoreTask: aTaskExerciser exercise on: html"].
	
	html div
"		class: 'uk-accordion-content';"
		class: 'hiddenTaskExercise' if: aTaskExerciser isOpen not;
		id: id;
		with: [
"			model isIgnoreTaskAllowed ifTrue: [
				html ukAnchorButton
					callback: [self toggleIgnore ];
					with: 'Ignore'.
			]."
			html render: aTaskExerciser]