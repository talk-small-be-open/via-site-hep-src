rendering
renderNavigationOn: html
	html heading level1; class: 'moduleNavigation'; with: [
		html span class: 'leftRight'; with: [
			previousModule
				ifNotNil: [html anchor callback: [self gotoPreviousModule]; with: [html iconLeft] ] ].
		html span: model indexCodeString.
		html span class: 'leftRight'; with: [
			nextModule
				ifNotNil: [html anchor callback: [self gotoNextModule]; with: [ html iconRight ] ] ]
	 ]