rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	| id title hasTitle task exercise |
	id := html nextId.

	task := aTaskExerciser task.
	title := task title.
	hasTitle := title notBlank.
	exercise := aTaskExerciser exercise.
	
	hasTitle ifTrue: [
		| divTag |
		divTag := html div.
		
		exercise isIgnored ifFalse: [
			divTag
				ukToggleTarget: ('#', id) class: 'hiddenTaskExercise' "animation: 'uk-animation-fade'";
				onClick: (html jQuery ajax
					callback: [aTaskExerciser toggleOpen]), (html jQuery this toggleClass: 'isOpen') ].
		divTag
			class: 'accBar';
			class: 'ignored' if: exercise isIgnored;
			class: 'isOpen' if: aTaskExerciser isOpen.
"			class: 'mothertongue' if: isAllMothertongue"
			
		task classification contextTags do: [ :each | divTag class: each code ].
		
		divTag with: [
			html div class: 'left'; with: [
				html heading level3; class: 'accTitle'; with: title.
				task classification activityTypeTags ifNotEmpty: [ :all |
					html span class: 'accIcons'; with: [
						all do: [:each | html iconActivityType: each ]]]
			].

			html div class: 'right'; with: [
				model isIgnoreTaskAllowed ifTrue: [
					html span class: 'accActions'; with: [
						html anchor
							class: 'ignoreTask';
							script: (html jQuery this onClick: ('event.stopPropagation()' asFunction: #(event)));
							callback: [aTaskExerciser toggleIgnore ];
							with: [
								exercise isIgnored
									ifTrue: [ html iconToggleOff ]
									ifFalse: [ html iconToggleOn ] ].
					]
				].
				html span class: 'accToggle'; with: [
					html span class: 'doOpen'; with: [html iconDropdown].
					html span class: 'doClose'; with: [html iconDropup].
				]
			]
		]
	].

	exercise isIgnored ifFalse: [
		html div
			class: 'hiddenTaskExercise' if: (hasTitle and: [aTaskExerciser isOpen not]);
			id: id;
			with: aTaskExerciser
	]