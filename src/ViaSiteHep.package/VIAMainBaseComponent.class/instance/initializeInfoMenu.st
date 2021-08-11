rendering
initializeInfoMenu
	| subMenu |
	subMenu := mainMenu addSubMenu.
	subMenu
		css: 'uk-parent'.

"	mainMenu addDivider."

	subMenu mainEntry: ((VIATextMenuEntry label: 'menu:info') icon: 'menuInfo'; yourself).

	{'teacher'->'lehrpersonen/didaktische-informationen'. 'faq'->'lehrpersonen/faq'. 'press'->'info'. 'about'->'info'. 'support'->'uber-tocca-a-te/unterstutzung'} do: [ :each |
		| entry |
		entry := VIAUrlMenuEntry label: ('menu:info:', each key) url: ('https://www.tocca-a-te.ch/', each value).
		entry icon: 'menuInfoPage'.
		subMenu addEntry: entry.
	].

"	#(teacher faq press about support) do: [ :each |
		(subMenu addEntry: ('menu:info:', each) send: #showTextWithBack: to: self arg: ('page:', each))
			icon: 'menuInfoPage'.
	]."

"	(subMenu addEntry: 'menu:info:disclaimer' send: #openDisclaimer to: self)
		icon: 'menuInfoPage'."

	^ subMenu