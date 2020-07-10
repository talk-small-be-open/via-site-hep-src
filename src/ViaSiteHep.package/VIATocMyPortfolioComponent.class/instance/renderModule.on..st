rendering
renderModule: aModule on: html
	html anchor
		callback: [ self showModule: aModule ];
		with: aModule displayName.
	
	html anchor
		class: 'uk-float-right';
		callback: [self removeModule: aModule];
		with: [
			html iconRemove; space.
			html t: 'myPortfolio:removeModule']
