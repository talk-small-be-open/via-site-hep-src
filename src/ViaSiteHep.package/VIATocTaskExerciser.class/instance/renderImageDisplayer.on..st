rendering-visitor
renderImageDisplayer: anImageDisplayer on: html
	html div class: 'imageDisplayer'; with: [
		html span class: 'image'; with: [
			anImageDisplayer imageTagOn: html.
"			html image
				url: anImageDisplayer imageUrl."
			self renderAssetInfo: anImageDisplayer imageAsset on: html.
			]]