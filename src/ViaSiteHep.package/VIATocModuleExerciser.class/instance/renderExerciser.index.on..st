rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	| id title hasTitle |
	id := html nextId.

	title := aTaskExerciser task title.
	hasTitle := title notBlank.
	
	hasTitle ifTrue: [	
		html div
			ukToggleTarget: ('#', id) class: 'hiddenTaskExercise' "animation: 'uk-animation-fade'";
			onClick: (html jQuery ajax
				callback: [aTaskExerciser toggleOpen]), (html jQuery this toggleClass: 'isOpen');
			class: 'accBar';
			class: 'ignored' if: aTaskExerciser exercise isIgnored;
			class: 'isOpen' if: aTaskExerciser isOpen;
	"		class: 'level-', model exerciseLevel asLowercase;"
			with: [
	"			html span class: 'accNumber'; with: anInteger."
	"			html div class: 'acc-icon'; with: [
					aTaskExerciser task classification activityTypeTags do: [:each |
						html iconActivityType: each]
					]."
				html heading level3; class: 'accTitle'; with: title.
				html span class: 'accToggle'; with: [
					html iconDropdown class: 'doOpen'.
					html iconClose class: 'doClose'.
				].
	"			html div class: 'uk-visible@s acc-subtitle'; with: aTaskExerciser task title."
		"		self renderScoreTask: aTaskExerciser exercise on: html"].
	].

	html div
		class: 'hiddenTaskExercise' if: (hasTitle and: [aTaskExerciser isOpen not]);
		id: id;
		with: [
"			model isIgnoreTaskAllowed ifTrue: [
				html bigAnchorButton
					callback: [ aTaskExerciser toggleIgnore ];
					t: 'moduleExerciser:ignoreTask'.
			]."
			html render: aTaskExerciser]