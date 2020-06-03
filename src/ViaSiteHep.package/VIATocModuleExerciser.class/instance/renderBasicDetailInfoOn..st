rendering
renderBasicDetailInfoOn: html
	| id |
	id := html nextId.

	html div
		onClick: ((html jQuery id: id) toggle);
		style: 'cursor: pointer';
		with: [
			html t: 'moduleExerciser:details'.
			html space.
			html iconDropdown].
	html div
		id: id;
		class: 'moduleDetails';
		style: 'display: none';
		with: [
			self renderModuleDetailsOn: html.
		]