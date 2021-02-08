rendering
renderModuleExercisesOn: html
"	html heading level4; t: 'myPortfolio:myModules'."

	self renderLegendOn: html.

	currentUnitaExercises ifNotBlank: [
		| unitNumber |
		unitNumber := currentUnita first.
		html heading level4; class: 'unitNavigation'; with: [
			html sT: ('tocca:unit', unitNumber asString).
		].

		self renderModuleExercises: currentUnitaExercises on: html.
	].

	extraExercises ifNotBlank: [
		html heading level4; class: 'unitNavigation'; with: [
			html sT: ('tocca:unitP').
			html text: ' / '.
			html sT: ('tocca:unitV').
		].
		self renderModuleExercises: extraExercises on: html.
	].

	"Rest"
	groupedExercises keysAndValuesDo: [ :mainIndexCode :exercises |
		| unitNumber id |
		id := html nextId.
		
		unitNumber := mainIndexCode first.
		html heading
			level4;
			class: 'unitNavigation';
"			ukToggle: ('#', id);"
			with: [
				html sT: ('tocca:unit', unitNumber asString).
		].

		html div id: id; with: [
			self renderModuleExercises: exercises on: html ]
	]