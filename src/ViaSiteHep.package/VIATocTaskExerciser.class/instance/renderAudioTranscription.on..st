rendering-visitor
renderAudioTranscription: anAudioPlayer on: html
	anAudioPlayer hasTranscription ifTrue: [
		html div class: 'transcriptionContainer'; with: [
			| transcriptionId |
			transcriptionId := html nextId.
			html anchor
				ukToggleTarget: ('#', transcriptionId) class: 'disabled';
				t: 'exerciser:showAudioTranscription'.
			html ukCard
				id: transcriptionId;
				a: 'uk-sticky' p: 'media: @s; bottom: !div.taskGroup;';
				class: 'uk-card-default uk-card-body uk-card-small audioTranscription disabled';
				with: [
					html strong t: 'exerciser:audioTranscription'.
					html space.
					html printThisButton: ('#', transcriptionId, ' div.transcriptionText').
					html div class: 'transcriptionText'; with: [
						html pillar: anAudioPlayer transcriptionPillar pillarDocument]]]].