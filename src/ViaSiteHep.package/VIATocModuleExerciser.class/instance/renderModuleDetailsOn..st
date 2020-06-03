rendering
renderModuleDetailsOn: html
	html t: 'moduleExerciser:tags'.
	html space.
	subtitleTags do: [:each |
		html text: each text] separatedBy: [html text: ', '].
	html break.
	html t: 'moduleExerciser:authors'; space.
	html text: model authorsLabel.
	html break.
	model hasCoAuthors ifTrue: [
		html t: 'moduleExerciser:coAuthors'; space.
		html text: model coAuthorsLabel.
		html break].
	html t: 'moduleExerciser:moduleVersion'.
	html space.
	html text: model versionNumberString.
	html break.