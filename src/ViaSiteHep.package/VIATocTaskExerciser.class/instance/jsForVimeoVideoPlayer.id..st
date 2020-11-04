javascript
jsForVimeoVideoPlayer: aVideoPlayer id: aVideoId
	| options |
	
	"See https://developer.vimeo.com/player/sdk"
	
	options := {
		'id'->aVideoPlayer videoId.
		'height'->aVideoPlayer height asString.
		'width'->aVideoPlayer width asString.
		'autopause'->true.
		'autoplay'->false.
		'byline'->true.
		'color'->'00ADEF'.
		'controls'->true.
		'muted'->aVideoPlayer noSound.
		'playsinline'->true.
		'portrait'->false.
		'title'->false.
	} aD.
	
	^String streamContents: [:s |
		s << '$(function(){'.
		s << ('var player = new Vimeo.Player("', aVideoId, '", ').
		options javascriptOn: s.
		s << '); '.
		aVideoPlayer startSeconds ifNotNil: [ :ss |
			s << 'player.on("loaded", function(data) {'.
			s << ('player.setCurrentTime(', ss asString, ')').
			s << '.then(function(seconds) {player.pause()});'.
			s << '});'.
		].

		aVideoPlayer endSeconds ifNotNil: [ :es |
			s << 'player.on("timeupdate", function(data) {'.
			s << ('if (data.seconds > ', es asString, ') { player.pause() };').
			s << '});'.
		].

		s << '});'.

	]

	"Remarks: Vimeo surprisingly has no start/end options! See https://github.com/vimeo/player.js/issues/20"