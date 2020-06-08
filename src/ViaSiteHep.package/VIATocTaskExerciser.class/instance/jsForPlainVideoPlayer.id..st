javascript
jsForPlainVideoPlayer: aVideoPlayer id: aVideoId

	^(String streamContents: [:s |
			s
				nextPutAll: 'var player', aVideoId, ' = document.getElementById("';
				nextPutAll: aVideoId;
				nextPutAll: '");'.

			aVideoPlayer noSound ifTrue: [
				s nextPutAll: 'player', aVideoId, '.muted = true']])