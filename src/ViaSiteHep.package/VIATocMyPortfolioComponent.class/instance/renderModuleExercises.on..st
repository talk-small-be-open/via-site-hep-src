rendering
renderModuleExercises: aCollection on: html
	html ukContainer with: [
		
		html ukList class: 'modulesList'; with: [
			aCollection do: [ :each |
				| tag module |
				module := each module.
				tag := html listItem
					yourself.
				module levelTag ifNotNil: [ :lt |
					tag class: ('level-', lt code) ].
				
				tag with: [
					self renderModuleExercise: each on: html.
		]]]]