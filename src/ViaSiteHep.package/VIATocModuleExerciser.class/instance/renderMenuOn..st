rendering
renderMenuOn: html
	html div class: 'moduleMenu'; with: [
		html div: [
"			html anchor
				callback: [self downloadSchoolPrintVersion];
				with: [
					html iconPdf; space.
					html t: 'moduleExerciser:downloadSchoolPrintPdf']."
"			html anchor
				callback: [self downloadSchoolPrintSolutionVersion];
				with: [
					html iconPdf; space.
					html t: 'moduleExerciser:downloadSchoolPrintSolutionPdf']."
"			self ifTeacher: [
				html break.
				html anchor
					callback: [self downloadAssetsZipPackage];
					with: [
						html iconZip; space.
						html t: 'moduleExerciser:downloadAssetsZipPackage']]."
			model hasTeacherNotes ifTrue: [
				html break.
				html
					ukModalTitle: 'exerciser:teacherNotes'
					anchor: [
						html iconInfo; space.
						html t: 'moduleExerciser:showTeacherNotes']
					with: [
						html div
							class: 'teacherNotes';
							with: [
								html printThisButton: ('div.teacherNotes div.teacherNotesText').
								html div class: 'teacherNotesText'; with: [
									html pillar: model teacherNotesPillar]].
					]
			].

			model isOldVersion ifTrue: [
				html break.
				html anchor
					callback: [self openNewestVersion];
					with: [
						html iconInfo; space.
						html t: 'moduleExerciser:openNewestVersion']].
		].
	
	]