rendering-visitor
renderVideoPlayer: aVideoPlayer on: html
	| videoId tag videoContainer |

	videoId := html nextId greaseString.

	tag := html div class: 'videoPlayer'.

	tag id: 'videoPlayer', videoId.

	tag with: [
		videoContainer := html div class: 'videoContainer'.
		
		aVideoPlayer width ifNotBlank: [
			videoContainer style: ('max-width:', (aVideoPlayer width greaseString, 'px')).
	"		tag style: ('max-height:', (aVideoPlayer height greaseString, 'px'))."
		].
		
		videoContainer with: [
			| videoTag |
			videoTag := html video.
			videoTag
				id: videoId;
"zu viel autoplay				a: 'uk-video';"
"				preload: 'auto';"
				preload: 'none'; "redommended by mediaelement.js"
"				url: aVideoPlayer videoUrl;"
"					poster: aVideoPlayer posterUrl;"
				noTab;
				controls: true;
				autoplay: false;
				a: 'muted' p: aVideoPlayer noSound.

			aVideoPlayer width ifNotBlank: [
				videoTag
					width: (aVideoPlayer width greaseString, 'px');
					height: (aVideoPlayer height greaseString, 'px');
					style: ('max-width:', (aVideoPlayer width greaseString, 'px'));
					style: ('max-height:', (aVideoPlayer height greaseString, 'px')).
			].
				
			videoTag with: [
				html source
					type: aVideoPlayer videoMimeType;
					url: aVideoPlayer videoUrl.
				html text: 'Your browser does not support the video tag.'].
			self renderAssetInfo: aVideoPlayer videoAsset on: html.
		].

		self renderVideoTranscription: aVideoPlayer on: html.

		html script: (self jsForVideoPlayer: aVideoPlayer id: videoId).

	].