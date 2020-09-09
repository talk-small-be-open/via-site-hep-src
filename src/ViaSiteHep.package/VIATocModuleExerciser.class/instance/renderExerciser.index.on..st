rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	| id title hasTitle task exercise |
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
		div
			class: 'accBar';
			class: 'ignored' if: exercise isIgnored;
			class: 'isOpen' if: aTaskExerciser isOpen;
			with: [
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
							script: (html jQuery this onClick: ('event.stopPropagation()' asFunction: #(event)));
							callback: [aTaskExerciser toggleIgnore ];
							with: [
								exercise isIgnored
									ifTrue: [ html iconToggleOff ]
									ifFalse: [ html iconToggleOn ] ].
	]]]].

	exercise isIgnored ifFalse: [
		html div
			class: 'hiddenTaskExercise' if: (hasTitle and: [aTaskExerciser isOpen not]);
			id: id;
			with: [
				html render: aTaskExerciser]]