rendering
renderExerciser: aTaskExerciser index: anInteger on: html
	| id title hasTitle task exercise initiallyHidden |
	id := html nextId.

	task := aTaskExerciser task.

	"Restricted access"
	(task canViewByAnyRole: self currentUserRoles) ifFalse: [ ^ false ].

	title := task title.
	hasTitle := title notBlank.
	exercise := aTaskExerciser exercise.

	"For lazy load, with AJAX"
	initiallyHidden := (hasTitle and: [aTaskExerciser isOpen not]).
	
	hasTitle ifTrue: [
		| divTag |
		divTag := html div.
		
		exercise isIgnored ifFalse: [
			divTag
				ukToggleTarget: ('#', id) class: 'hiddenTaskExercise' "animation: 'uk-animation-fade'";
				onClick: (self jsForClickExerciser: aTaskExerciser titleId: divTag ensureId bodyId: id on: html)
		].
	
		divTag
			class: 'accBar';
			class: 'ignored' if: exercise isIgnored;
			class: 'isOpen' if: aTaskExerciser isOpen;
			class: 'facoltativo' if: aTaskExerciser isFacoltativo;
			class: 'mothertongue' if: aTaskExerciser isMothertongue.
			
"		task classification contextTags do: [ :each | divTag class: each code ]."
		
		divTag with: [
			html div class: 'left'; with: [

				"OPTIMIZE: all = l1 has no logo. suppress."
				task levelTag ifNotNil: [ :lt |
					lt isUsingIcon ifTrue: [
						html span class: 'level'; with: [ 
							html iconLevelTag: lt]
				]]. 

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
			class: 'taskExercise';
			class: 'hiddenTaskExercise' if: initiallyHidden;
			class: 'noTitleTaskExercise' if: hasTitle not;
			id: id;
			with: [
				initiallyHidden ifFalse: [
					self renderExerciserBody: aTaskExerciser on: html]
			]
	]