rendering
renderFooterOn: html
	| id |
	model hasFootnotes ifTrue: [
		id := html nextId.
		html ukButton
			ukToggleTarget: ('#', id) "animation: 'uk-animation-fade'";
			t: 'moduleExerciser:showFootnotes'.
		html div
			class: 'moduleFootnotes';
			class: 'uk-hidden';
			id: id;
			with: [
				html pillar: model footnotesPillar]]