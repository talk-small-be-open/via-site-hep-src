rendering-visitor
renderImageDisplayer: anImageDisplayer on: html
	html div class: 'imageDisplayer'; with: [
		html span class: 'image'; with: [
			html image
	"			style: anImageDisplayer cssStyle;"
				url: anImageDisplayer imageUrl.
			self renderAssetInfo: anImageDisplayer imageAsset on: html.
			]]