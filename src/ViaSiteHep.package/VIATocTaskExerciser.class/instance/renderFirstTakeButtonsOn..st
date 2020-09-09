rendering
renderFirstTakeButtonsOn: html
	html submitButton
		class: 'check uk-width-1-1@s uk-width-auto@l';
		callback: [self checkButtonClicked];
		with: [ html t: 'exerciser:check']