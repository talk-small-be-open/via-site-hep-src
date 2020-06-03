rendering
renderQuickLoginOn: html
	html div: 'Einloggen als: '.
	html unorderedList
		list: self wd users;
		labels: [:each | each fullName];
		callback: [:each | self session loginUser: each. self answer]