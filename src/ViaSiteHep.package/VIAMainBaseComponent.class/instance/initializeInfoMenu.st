rendering
initializeInfoMenu
	| subMenu |
	subMenu := mainMenu addSubMenu.
	mainMenu addDivider.

	subMenu mainEntry: (VIATextMenuEntry label: 'menu:info').
	
	subMenu addEntry: 'menu:info:about' send: #showText: to: self arg: '321via:info:about'.
	subMenu addEntry: 'menu:info:credits' send: #showText: to: self arg: '321via:info:credits'.
	subMenu addEntry: 'menu:info:pressReview' send: #showText: to: self arg: '321via:info:pressReview'.
	subMenu addEntry: 'menu:info:faqStudent' send: #showText: to: self arg: '321via:info:faqStudent'.
	subMenu addEntry: 'menu:info:faqTeacher' send: #showText: to: self arg: '321via:info:faqTeacher'.
	subMenu addEntry: 'menu:info:contact' send: #showText: to: self arg: '321via:info:contact'.