rendering
renderScoreOn: html
	| points max percent |
	
	self isFirstTake ifTrue: [^self].
	
	points := exercise points.
	max := exercise maxPoints.
	percent := exercise percentFinished.
	
	html div class: 'score'; with: [

		(percent between: 0 and: 99) ifTrue: [
			html div: [
				html text: percent asString.
				html t: 'exerciser:percentDone'].

			html div: [
				| threshold1 threshold2 p |
				threshold1 := 50.
				threshold2 := 80.
				p := {
					#points->(VIAHelper printPoints: points).
					#max->max.
					#rem->(VIAHelper printPoints: max-points)}.
				(percent between: 0 and: (threshold1-1)) ifTrue: [
					html t: 'exerciser:done_points_of_max_remaining_rem_' p: p].
				(percent between: threshold1 and: (threshold2-1)) ifTrue: [
					html t: 'exerciser:doneGood_points_of_max_remaining_rem_' p: p].
				(percent between: threshold2 and: 99) ifTrue: [
					html t: 'exerciser:doneVeryGood_points_of_max_remaining_rem_' p: p]]]].

	percent = 100 ifTrue: [
		html ukLabelSuccess: [
			html iconCorrect; space.
			html t: 'exerciser:taskFinished']]