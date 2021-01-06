rendering
renderBottomNavigationOn: html
	nextModule ifNotNil: [
		html div class: 'moduleBottomNavigation'; with: [
			html span class: 'left'; with: [self renderTeacherMenuOn: html ].
			html span class: 'center'.
			html span class: 'right'; with: [
	"			html span class: 'arrow'; with: [
					previousModule
						ifNotNil: [html anchor callback: [self gotoPreviousModule]; with: [html iconLeft] ] ]."
				html span class: 'arrow'; with: [
					html anchor
						callback: [self gotoNextModule];
						with: [
							html sT: 'moduleExerciser:gotoNextModule'.
							html text: nextModule indexCodeString.
							html iconRight ] ] ]
			]]