rendering
jsForClickExerciser: aTaskExerciser titleId: aTitleId bodyId: aBodyId on: html
	| scrollToMe myself body |
	myself := [(html jQuery id: aTitleId)].
	body := [(html jQuery id: aBodyId)].
	
	scrollToMe := (( (JSStream on: 'window') call: 'scrollToExerciseTask' with: myself value ) condition: (myself value hasClass: 'isOpen')).
	
	
	^ (html jQuery this toggleClass: 'isOpen'),
	((body value load
		html: [:h | aTaskExerciser toggleOpen. self renderExerciserBody: aTaskExerciser on: h];
		onComplete: (
			((JSStream on: 'window') call: 'processHtmlDocument' with: body value),
			scrollToMe
		)
	) condition: (body value is: ':empty')
	else: (
		(html jQuery ajax callback: [aTaskExerciser toggleOpen]),
		scrollToMe
	)
)