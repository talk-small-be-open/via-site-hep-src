rendering-visitor
renderVideoTranscription: aVideoPlayer on: html
	| transcriptionId |

	aVideoPlayer hasTranscription ifTrue: [
		html div
			class: 'transcriptionContainer';
			with: [
				transcriptionId := html nextId.
				html anchor
					ukToggleTarget: ('#', transcriptionId) class: 'disabled';
					t: 'exerciser:showVideoTranscription'.
				html ukCard
					id: transcriptionId;
					a: 'uk-sticky' p: 'media: @s; bottom: !div.taskGroup;';
					class: 'uk-card-default uk-card-body uk-card-small videoTranscription disabled';
					with: [
						html strong t: 'exerciser:videoTranscription'.
						html space.
						html printThisButton: ('#', transcriptionId, ' div.transcriptionText').
						html div class: 'transcriptionText'; with: [
							html pillar: aVideoPlayer transcriptionPillar pillarDocument]].
		]]