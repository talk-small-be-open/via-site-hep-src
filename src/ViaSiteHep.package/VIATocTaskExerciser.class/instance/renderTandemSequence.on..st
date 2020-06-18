rendering-visitor
renderTandemSequence: aTandemSequence on: html
	| component |
	component := self exerciserFor: aTandemSequence class: VIATandemSequenceExerciser.
	html render: component