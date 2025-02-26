rendering-visitor
renderDualImageSwitcher: anImageSwitcher on: html
	| id |
	id := html nextId.
	
	html div class: 'dualImageSwitcher'; class: anImageSwitcher uiStyle; with: [

		html div class: 'imagesContainer'; id: id; with: [ 
			anImageSwitcher hasImage1
				ifFalse: [ html image url: VIAHelper dataUrlNoImageSvg; yourself ]
				ifTrue: [
					html div class: 'image image1'; with: [
						anImageSwitcher imageAsset1 imageTagWidth: anImageSwitcher width on: html.
						self renderAssetInfo: anImageSwitcher imageAsset1 on: html.
					].
					html div class: 'image image2 hidden'; with: [
						anImageSwitcher imageAsset2 imageTagWidth: anImageSwitcher width on: html.
						self renderAssetInfo: anImageSwitcher imageAsset1 on: html.
					].
				].
			html div class: 'tools'; with: [
				html span class: 'switcher'; with: [
					html label: [
						html ukCheckbox
							onClick: (((html jQuery id: id) find: 'div.image') toggleClass: 'hidden').
						html space.
						html text: anImageSwitcher switchText ]
				].
				html printThisButton: ('#', id, ' .image:not(.hidden)').
			]
		].

	]