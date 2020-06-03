rendering
renderTitleOn: html
	html heading level1; class: 'moduleTitle'; with: [

"		html span
			class: 'level-badge';
			class: ('level-', model exerciseLevel asLowercase);
			with: model exerciseLevel.
		html space."

		html text: model displayName.

"		self renderRatingOn: html."
		
	].