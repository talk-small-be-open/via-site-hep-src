rendering
renderNavigationOn: html
	html div class: 'moduleNavigation'; with: [ 
		html span: '<'.
		html span: model indexCode.
		html span: '>'.
	 ]