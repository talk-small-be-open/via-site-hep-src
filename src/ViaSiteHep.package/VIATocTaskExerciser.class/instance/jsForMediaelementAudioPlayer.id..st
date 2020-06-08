javascript
jsForMediaelementAudioPlayer: anAudioPlayer id: anAudioId

	^(String streamContents: [:s |
			s
				nextPutAll: 'var player', anAudioId, ' = $("#';
				nextPutAll: anAudioId;
				nextPutAll: '").mediaelementplayer({
pauseOtherPlayers: true,
alwaysShowControls: true,
alwaysShowHours: false,
showTimecodeFrameCount: false,
audioWidth: "100%",
})[0];'.

		])