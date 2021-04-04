rendering
renderContentOn: html
	html div
		class: 'mainContainer';
		class: (VIATocHelper toccamoduleCssOfToccaunit: self session currentToccaunit);
		with: [
			self renderHeaderOn: html.
		"		self renderMenuOn: html."
			html div class: 'coreContainer'; with: [
				self renderFlashMessagesOn: html.
				self renderSystemMessageOn: html.
				self renderCoreOn: html].
			self isExercising ifFalse: [
				self renderFooterOn: html ]
		].
	
	self renderAdminFrontendToolsOn: html