rendering
renderScoreOn: html
	html div class: 'moduleScore uk-align-right@s'; with: [
		html table class: 'scoreTable'; with: [
			html tableRow: [
				self taskExercises withIndexDo: [:each :index |
					html tableData
						class: 'finished' if: each isFinished;
						class: 'ignored' if: each isIgnored;
						class: 'inWork' if: each isInWork;
						with: [
							html span class: 'taskNumber'; with: index asString.
							each task classification activityTypeTags do: [:eachType |
								html iconActivityType: eachType].
	"					html text: each points asString"
					]]]
		].
		html span: [
			html t: 'moduleExerciser:points'; space.
			html text: (VIAHelper printPoints: self moduleExercise points).
			html text: ' / '.
			html text: self moduleExercise maxPoints asString]
	].