javascript
jsForMediaelementVideoPlayer: aVideoPlayer id: aVideoId

	^(String streamContents: [:s |
			s
				nextPutAll: 'var player', aVideoId, ' = $("#';
				nextPutAll: aVideoId;
				nextPutAll: '").mediaelementplayer({
	pauseOtherPlayers: true,
	alwaysShowControls: false,
	alwaysShowHours: false,
	showTimecodeFrameCount: false,
	stretching: "responsive",
	})[0];'.

			aVideoPlayer noSound ifTrue: [
				s nextPutAll: 'player', aVideoId, '.setMuted(true)'].
				

		])