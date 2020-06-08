rendering
renderFirstTakeButtonsOn: html
	html submitButton
		class: 'check';
		callback: [self checkButtonClicked];
		with: [ html t: 'exerciser:check'].