rendering
renderInfoOn: html
	html ukGrid
		class: 'uk-grid-small uk-child-width-1-2';
		with: [
			#(#(teacher faq) #(press about) #(support contact)) do: [ :each |
				{ each first. each second } do: [ :key |
					html div: [
						html bigAnchorButton
							callback: [ self app showText: 'page:', key ];
							with: [
								html sT: ('home:info:', key).
	]]]]]