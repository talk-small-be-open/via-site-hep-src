rendering
renderNavigationOn: html
	"heading level1;"
	html div class: 'moduleNavigation'; "a: 'uk-sticky' p: 'offset: 30';" with: [
		html span class: 'left'; with: [
			self renderBackishButtonOn: html
		].
		html span class: 'center'; with: [
			html span class: 'arrow'; with: [
				previousModule
					ifNotNil: [html anchor callback: [self gotoPreviousModule]; with: [html iconLeft] ] ].
			html span: model indexCodeString.
			html span class: 'arrow'; with: [
				nextModule
					ifNotNil: [html anchor callback: [self gotoNextModule]; with: [ html iconRight ] ] ]
			].
		html span class: 'right'; with: [  ]
	 ]