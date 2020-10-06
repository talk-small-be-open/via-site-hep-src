rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	| id title hasTitle task exercise tag |
	id := html nextId.

	task := aTaskExerciser task.
	title := task title.
	hasTitle := title notBlank.
	exercise := aTaskExerciser exercise.
	
	hasTitle ifTrue: [
		| div |
		div := html div.
		
		exercise isIgnored ifFalse: [
			div
				ukToggleTarget: ('#', id) class: 'hiddenTaskExercise' "animation: 'uk-animation-fade'";
				onClick: (html jQuery ajax
					callback: [aTaskExerciser toggleOpen]), (html jQuery this toggleClass: 'isOpen') ].
		tag := div
			class: 'accBar uk-clearfix';
			class: 'ignored' if: exercise isIgnored;
			class: 'isOpen' if: aTaskExerciser isOpen.
			
		task classification contextTags do: [ :each | tag class: each code ].
		
		tag with: [
			html span class: 'uk-float-left'; with: [
				html heading level3; class: 'accTitle'; with: title.
				html span class: 'accIcons'; with: [
					task classification activityTypeTags do: [:each | html iconActivityType: each ]]].

			html span class: 'uk-float-right'; with: [
				html span class: 'accActions'; with: [
					model isIgnoreTaskAllowed ifTrue: [
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
				].

			]
	]].

	exercise isIgnored ifFalse: [
		html div
			class: 'hiddenTaskExercise' if: (hasTitle and: [aTaskExerciser isOpen not]);
			id: id;
			with: [
				html render: aTaskExerciser]]