rendering
renderPageYourHepAccountOn: html
	html heading t: 'register:title'.
	html paragraph: [html t: 'register:hep:welcome'].
	
	self isInvited ifTrue: [
		html paragraph: [ html t: 'register:hep:pleaseLogin' ]
	] ifFalse: [ 
		html paragraph: [ html t: 'register:hep:pleaseActivate' ]
	].

	html anchorButton
		callback: [ self close ];
		t: 'general:close'