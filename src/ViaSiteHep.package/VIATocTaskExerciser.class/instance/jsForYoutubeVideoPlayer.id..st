javascript
jsForYoutubeVideoPlayer: aVideoPlayer id: aVideoId
	| options playerOptions jsOnReady |
	
	"https://developers.google.com/youtube/player_parameters.html?playerVersion=HTML5#modestbranding"
	playerOptions := {
		'autoplay'->0.
		'modestbranding'->1.
		'disablekb'->1.
		'fs'->1.
		'origin'->self website baseUrl.
		'playsinline'->1.
		'rel'->0.
		'showinfo'->0.
		'enablejsapi'->1.
	} aD.

	aVideoPlayer startSeconds ifNotNil: [ :ss |
		playerOptions at: 'start' put: ss.
	].

	aVideoPlayer endSeconds ifNotNil: [ :es |
		playerOptions at: 'end' put: es.
	].

	jsOnReady := JSStream new.
	[:s |
		s << 'function(event) {var player = event.target;'.
		aVideoPlayer noSound ifTrue: [ s << 'player.mute();' ].
		s << '}'
	] value: jsOnReady stream.
		
	options := {
		'videoId'->aVideoPlayer videoId.
		'height'->aVideoPlayer height asString.
		'width'->aVideoPlayer width asString.
		'playerVars'->playerOptions.
		'events'->{ 'onReady'->jsOnReady }aD.
	} aD.

"          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }"

	
	^String streamContents: [:s |
		s << 'youTubeIframeAPIReady.then(function(){'.
		s << ('new YT.Player("', aVideoId, '", ').
		options javascriptOn: s.
		s << ')});'
	]