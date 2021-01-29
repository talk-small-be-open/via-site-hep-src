rendering
renderAttributesModule: aModule on: html
	aModule isForBetatester ifTrue: [
		html betatesterSign
	]