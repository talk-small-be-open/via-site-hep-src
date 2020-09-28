rendering
renderQuickLoginOn: html
	html div: 'DEVELOPMENT Einloggen als: '.
	html unorderedList
		list: self wd users;
		labels: [:each | each fullName];
		callback: [:each | self session loginUser: each remember: rememberMe. self answerLoginOk]