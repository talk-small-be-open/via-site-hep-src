rendering
renderContentOn: html
	html devDummy: 'Hi there! This is public home.'.
	
	html ukAnchorButton
		callback: [ self app openLoginDialog ];
		with: 'Login'