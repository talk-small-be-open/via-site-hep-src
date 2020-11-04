rendering
renderObjectPair: anObjectPair on: html
	|  answerHolder |
	answerHolder := exercise answerOf: anObjectPair.
	
	html div class: 'objectPair solution'; with: [
		html div class: 'leftObject'; with: [
			anObjectPair leftPillar acceptRenderingVisitor: self on: html].
		html div
			class: 'rightObject';
			with: [
				anObjectPair rightPillar acceptRenderingVisitor: self on: html]]