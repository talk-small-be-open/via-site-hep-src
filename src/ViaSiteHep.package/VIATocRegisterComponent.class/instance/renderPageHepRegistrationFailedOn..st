rendering
renderPageHepRegistrationFailedOn: html
	html heading t: 'register:title'.
	html paragraph: [html t: 'register:hep:failed'].
	html paragraph: hepMessage.
	html anchorButton
		callback: [ self gotoStart ];
		t: 'register:tryAgain'