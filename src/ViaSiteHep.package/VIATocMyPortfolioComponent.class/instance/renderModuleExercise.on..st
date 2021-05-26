rendering
renderModuleExercise: aModuleExercise on: html
	| module |
	module := aModuleExercise module.
	
	html anchor
		class: 'gotoModule';
		callback: [ self showModuleExercise: aModuleExercise ];
		with: [
			html span class: 'indexCode'; with: module indexCodeString.
			html span class: 'level'; with: [ 
				html iconLevelTag: module levelTag
			].
			html span class: 'moduleTitle'; with: module title
	].


	html span class: 'moduleStatus'; with: [ 
		html anchor
			class: 'deleteAction';
			callback: [self removeModuleExercise: aModuleExercise];
			with: [
				html iconRemove.
	"			html t: 'myPortfolio:removeModule'"].

		html iconProgressFromPercent: (aModuleExercise percentDone) ].
