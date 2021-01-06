rendering
renderTeacherMenuOn: html
	self ifTeacher: [
		html div class: 'teacherMenu'; with: [
			html div: [
				model hasTeacherNotes ifTrue: [
					html
						ukModalTitle: 'moduleExerciser:teacherNotes'
						anchor: [
							html iconInfo.
							html t: 'moduleExerciser:showTeacherNotes']
						with: [
							self renderTeacherAreaOn: html
						]
				].

	"			model isOldVersion ifTrue: [
					html break.
					html anchor
						callback: [self openNewestVersion];
						with: [
							html iconInfo; space.
							html t: 'moduleExerciser:openNewestVersion']]."
			].
		
		]]