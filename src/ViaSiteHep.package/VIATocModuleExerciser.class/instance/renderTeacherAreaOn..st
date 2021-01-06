rendering
renderTeacherAreaOn: html
	html div
		class: 'teacherNotes';
		with: [
			html printThisButton: ('div.teacherNotes div.teacherNotesText').
			html div class: 'teacherNotesText'; with: [
				html pillar: model teacherNotesPillar]]