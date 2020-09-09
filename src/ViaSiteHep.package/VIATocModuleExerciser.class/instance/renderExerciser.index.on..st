rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	| id title hasTitle task exercise |
	id := html nextId.

	task := aTaskExerciser task.
	title := task title.
	hasTitle := title notBlank.
	exercise := aTaskExerciser exercise.
	
	hasTitle ifTrue: [	
		html div
			ukToggleTarget: ('#', id) class: 'hiddenTaskExercise' "animation: 'uk-animation-fade'";
			onClick: (html jQuery ajax
				callback: [aTaskExerciser toggleOpen]), (html jQuery this toggleClass: 'isOpen');
			class: 'accBar';
			class: 'ignored' if: exercise isIgnored;
			class: 'isOpen' if: aTaskExerciser isOpen;
	"		class: 'level-', model exerciseLevel asLowercase;"
			with: [
	"			html span class: 'accNumber'; with: anInteger."
	"			html div class: 'acc-icon'; with: [
					aTaskExerciser task classification activityTypeTags do: [:each |
						html iconActivityType: each]
					]."
				html heading level3; class: 'accTitle'; with: title.
				html span class: 'accIcons'; with: [
					task classification activityTypeTags do: [:each | html iconActivityType: each ]].

				html span class: 'accToggle'; with: [
					html span class: 'doOpen'; with: [html iconDropdown].
					html span class: 'doClose'; with: [html iconDropup].
				].

				html span class: 'accActions'; with: [
					model isIgnoreTaskAllowed ifTrue: [
						html anchor
							class: 'ignoreTask';
							callback: [aTaskExerciser toggleIgnore ];
							with: [
								exercise isIgnored
									ifTrue: [ html iconToggleOff ]
									ifFalse: [ html iconToggleOn ] ].
			"				t: (exercise isIgnored ifTrue: ['moduleExerciser:deignoreTask'] ifFalse: ['exerciser:ignoreTask'])."
				
				]].


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