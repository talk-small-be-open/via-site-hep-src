rendering
renderContentOn: html
	html div
		class: 'mainContainer';
		with: [
 
			self renderHeaderOn: html.
			html div class: 'coreContainer'; with: [
		"		html paragraph: 'Direktes Login in der Alpha-Phase:'.
				html ukAnchorButton
					callback: [
						| user |
						user := self wd users anyOne.
						self session loginUser: user.
						self login];
					with: 'TEST-LOGIN'."
					
				self renderCoreOn: html].
			self renderFooterOn: html ].
		
	self renderAdminFrontendToolsOn: html