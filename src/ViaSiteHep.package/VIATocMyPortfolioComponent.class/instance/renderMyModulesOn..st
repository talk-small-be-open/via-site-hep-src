rendering
renderMyModulesOn: html
	self currentPortfolio notDoneModuleExercises ifNotEmpty: [:collection |
		html heading level4; t: 'myPortfolio:myModules'.
		html ukModulesGrid: [
			collection do: [:each |
				html div: [
					self renderModule: each module on: html.
					html anchor
						callback: [self removeModule: each module];
						with: [
							html iconRemove; space.
							html t: 'myPortfolio:removeModule']
	]]]].

	self currentPortfolio doneModuleExercises ifNotEmpty: [:collection |
		html heading level4; t: 'myPortfolio:myFinishedModules'.
		html ukModulesGrid: [
			collection do: [:each |
				html div: [
					self renderModule: each module on: html.
					html anchor
						callback: [self removeModule: each module];
						with: [
							html iconRemove; space.
							html t: 'myPortfolio:removeModule']
					
		]]]]