rendering
renderInfoOn: html
	html ukGrid
		class: 'infoButtons uk-grid-small uk-child-width-1-1 uk-child-width-1-2@l';
		with: [
			#(#(teacher faq) #(press about) #(support contact)) do: [ :each |
				{ each first. each second } do: [ :key |
					html div class: 'infoButton'; with: [
						html anchor
							callback: [ self app showTextWithBack: 'page:', key ];
							with: [
								html sT: ('home:info:', key).
	]]]]]