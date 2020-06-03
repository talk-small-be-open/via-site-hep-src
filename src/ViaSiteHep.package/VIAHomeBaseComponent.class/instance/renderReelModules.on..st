rendering
renderReelModules: aCollection on: html
"	html div class: 'uk-slidenav-position'; attributeAt: 'data-uk-slider' put: '{infinite: false}'; with: ["
		html div a: 'uk-slider'; with: [
			html div class: 'uk-position-relative'; with: [
				html unorderedList class: 'uk-slider-items uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-grid uk-grid-small'; with: [
					aCollection do: [:each |
						html listItem: [
							moduleCardRenderer renderModule: each on: html]]].
"				html div class: 'uk-hidden@s'; with: ["
					html anchor url: '#';
						class: 'uk-position-center-left';
						a: 'uk-slidenav-previous';
						a: 'uk-slider-item' p: 'previous'.
					html anchor url: '#';
						class: 'uk-position-center-right';
						a: 'uk-slidenav-next';
						a: 'uk-slider-item' p: 'next' ].
"				html div class: 'uk-position-relative uk-visible@s'; with: [
					html anchor url: '#';
						class: 'uk-position-center-left-out';
						a: 'uk-slidenav-previous';
						a: 'uk-slider-item' p: 'previous'.
					html anchor url: '#';
						class: 'uk-position-center-right-out';
						a: 'uk-slidenav-next';
						a: 'uk-slider-item' p: 'next' ]"
					
			]