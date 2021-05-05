rendering
renderTitleOn: html
	| tag |
	tag := html heading
		level2;
		class: 'moduleTitle'.
"		class: 'allMothertongue' if: isAllMothertongue"

	model levelTag ifNotNil: [ :lt |
		tag class: ('level-', lt code) ].


	tag with: [
"		html break."
		html span class: 'level'; with: [ 
			html iconLevelTag: model levelTag
		]. 
		html span: model title.
	]