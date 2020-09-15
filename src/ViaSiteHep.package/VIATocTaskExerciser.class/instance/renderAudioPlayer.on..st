rendering-visitor
renderAudioPlayer: anAudioPlayer on: html
	| audioId |
	audioId := html nextId greaseString.
	
	html div class: 'audioPlayer'; with: [
		html audio
			preload: 'metadata'; "none = recommended by mediaelement.js"
			noTab;
			autoplay: false;
			id: audioId;
			controls: true;
			url: anAudioPlayer audioUrl.
		self renderAssetInfo: anAudioPlayer audioAsset on: html.

		self renderAudioTranscription: anAudioPlayer on: html.

		html script: (self jsForAudioPlayer: anAudioPlayer id: audioId)]