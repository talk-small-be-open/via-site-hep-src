rendering
renderLoginMenuOn: html
	html listItem with: [
		html anchor
			callback: [ self openLoginDialog ];
			with: [
				html span class: 'login'; with: 'Login'.
				html span class: 'menuDivider'].
		html div class: 'uk-navbar-dropdown loginMenu'; with: [
			html unorderedList class: 'uk-nav uk-navbar-dropdown-nav loginMenu'; with: [
				html listItem class: 'facebookLogin'; with: [
					html anchor
						onClick: 'login_facebook()';
						with: [
							html iconFacebookOfficial; space.
							html t: 'menu:facebookLogin']].
				html listItem class: 'googleLogin'; with: [
					html anchor
						onClick: 'login_google()';
						with: [
							html iconGoogleOfficial; space.
							html t: 'menu:googleLogin']].
				html listItem: [
					html anchor
						callback: [self openLocalLoginDialog];
						t: 'menu:localLogin'].
				html listItem: [
					html anchor
						callback: [self downloadLocalLoginHelpPdf];
						with: [
							html iconHelp; space.
							html t: 'menu:downloadLoginHelp']].

"				self ifBetatest: [
					html listItem: [
						html anchor
							callback: [self registerNewUser];
							t: 'menu:registerNewUser']]."
				self ifDevelopment: [
					html listItem: [
						self renderQuickLoginOn: html]]]]]