rendering
renderMyModulesOn: html
	self currentPortfolio notDoneModuleExercises ifNotEmpty: [:collection |
		html heading level4; t: 'myPortfolio:myModules'.
		html ukList class: 'modulesList'; with: [
			collection do: [:each |
				html listItem: [
					self renderModule: each module on: html.
	]]]].

	self currentPortfolio doneModuleExercises ifNotEmpty: [:collection |
		html heading level4; t: 'myPortfolio:myFinishedModules'.
		html unorderedList class: 'modulesList'; with: [
			collection do: [:each |
				html listItem: [
					self renderModule: each module on: html.
		]]]]