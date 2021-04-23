rendering-visitor
renderTaskBrickGroup: aTaskBrickGroup on: html
	| id |

	(aTaskBrickGroup canViewByAnyRole: self currentUserRoles) ifFalse: [ ^ false ].
	
	id := html nextId.

	html div
"		ukToggleFadeTarget: ('#', id);"
		ukToggleTarget: ('#', id) class: 'hidden';

		class: 'taskBrickGroupToggler uk-width-1-1@s uk-width-auto@l';
		with: [
			html pillarString: aTaskBrickGroup title.
			html space; iconDropdown].
	html div
		class: 'taskGroup taskBrickGroup';
		class: aTaskBrickGroup uiStyle;
		class: 'hidden';
"dont		beHidden;"
"dont		class: 'uk-hidden';"
		id: id;
		with: [
"			html heading level1; with: aTaskBrickGroup title."
			aTaskBrickGroup children do: [:each |
				html div class: 'taskGroupItem'; with: [
					each acceptRenderingVisitor: self on: html]]]