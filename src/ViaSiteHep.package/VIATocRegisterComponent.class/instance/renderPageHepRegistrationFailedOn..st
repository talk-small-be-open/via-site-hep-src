rendering
renderPageHepRegistrationFailedOn: html
	html heading t: 'register:hep:failed'.
"	html paragraph: [html t: 'register:activation:info']"
	html paragraph: hepMessage.
	html anchorButton
		callback: [ self gotoStart ];
		t: 'register:tryAgain'