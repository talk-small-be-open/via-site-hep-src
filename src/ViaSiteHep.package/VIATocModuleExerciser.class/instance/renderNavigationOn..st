rendering
renderNavigationOn: html
	html div class: 'moduleNavigation'; with: [
		previousModule
			ifNil: [ html span ]
			ifNotNil: [html anchor callback: [self gotoPreviousModule]; with: [html iconLeft] ].
		html span: model indexCodeString.
		nextModule
			ifNil: [ html span ]
			ifNotNil: [html anchor callback: [self gotoNextModule]; with: [ html iconRight ] ].
	 ]