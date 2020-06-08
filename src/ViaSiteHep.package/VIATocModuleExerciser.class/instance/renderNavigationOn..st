rendering
renderNavigationOn: html
	html div class: 'moduleNavigation'; with: [
		previousModule ifNotNil: [
			html anchor callback: [self gotoPreviousModule]; with: [html iconLeft] ].
		html span: model indexCodeString.
		nextModule ifNotNil: [
			html anchor callback: [self gotoNextModule]; with: [ html iconRight ] ].
	 ]