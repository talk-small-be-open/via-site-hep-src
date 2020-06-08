rendering-visitor
renderTaskBrickGroup: aTaskBrickGroup on: html
	| id |
	id := html nextId.

	html ukButton
		ukToggleFadeTarget: ('#', id);
		class: 'taskBrickGroupToggler';
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