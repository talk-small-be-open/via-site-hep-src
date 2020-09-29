rendering-visitor
renderTaskBrickGroup: aTaskBrickGroup on: html
	| id |
	id := html nextId.

	html div
		ukToggleFadeTarget: ('#', id);
		class: 'taskBrickGroupToggler uk-width-1-1@s uk-width-auto@l';
		with: [
			html text: aTaskBrickGroup title.
			html space; iconDropdown].
	html div
		class: 'taskGroup taskBrickGroup';
		beHidden;
"		class: 'uk-hidden';"
		id: id;
		with: [
"			html heading level1; with: aTaskBrickGroup title."
			aTaskBrickGroup children do: [:each |
				html div class: 'taskGroupItem'; with: [
					each acceptRenderingVisitor: self on: html]]]