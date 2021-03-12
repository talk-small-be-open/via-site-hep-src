rendering
renderModuleExercisesOn: html
"	html heading level4; t: 'myPortfolio:myModules'."

	self renderLegendOn: html.

	currentUnitaExercises ifNotBlank: [
		| unitNumber |
		unitNumber := currentUnita first.
		html heading level4; class: 'currentUnit'; with: [
			html sT: ('tocca:unit', unitNumber asString).
		].

		self renderModuleExercises: currentUnitaExercises on: html.
	].

	extraExercises ifNotBlank: [
		html heading level4; with: [
			html sT: ('tocca:unitP').
			html text: ' / '.
			html sT: ('tocca:unitV').
		].
		self renderModuleExercises: extraExercises on: html.
	].


	html break; break; break.
	
	"Rest"
	groupedExercises keys reverseDo: [ :mainIndexCode |
		| unitNumber id exercises |
		exercises := (groupedExercises at: mainIndexCode).
		id := html nextId.
		
		unitNumber := mainIndexCode first.
		html heading
			level4;
"			ukToggle: ('#', id);"
			with: [
				html sT: ('tocca:unit', unitNumber asString).
		].

		html div id: id; with: [
			self renderModuleExercises: exercises on: html ]
	]