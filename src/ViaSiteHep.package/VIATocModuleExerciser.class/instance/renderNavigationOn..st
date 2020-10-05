rendering
renderNavigationOn: html
	html heading level1; class: 'moduleNavigation'; "a: 'uk-sticky' p: 'offset: 30';" with: [
		html span class: 'left'; with: [
			html anchor
				callback: [ self gotoUnitOverview ];
				with: [
					html iconBackUp.
"					html span class: 'backText uk-visible@l'; t: 'moduleExerciser:gotoOverview'"
				]
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