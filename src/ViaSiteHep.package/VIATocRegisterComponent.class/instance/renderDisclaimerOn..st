rendering
renderDisclaimerOn: html
	| id |
	id := html nextId.

	html div class: 'bottomBuffer'; with: [
		html anchor
			ukToggleFadeTarget: ('#', id);
			with: [
				html t: 'register:disclaimer:link'.
				html space; iconDropdown]].
	html div
		beHidden;
		id: id;
		with: disclaimerComponent