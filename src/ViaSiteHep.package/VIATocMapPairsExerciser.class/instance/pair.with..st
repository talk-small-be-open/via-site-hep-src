ajax
pair: aPair with: aChosenAnswerHolder
	| correct |

	correct := aPair isValidAnswer: aChosenAnswerHolder value.

	correct ifTrue: [
		| answerLeft |
		answerLeft := self exercise answerOf: aPair.
	
		"Exchange objects"
		answerLeft ~= aChosenAnswerHolder ifTrue: [
			| newRightObject oldRightObject |

			newRightObject := aChosenAnswerHolder value.
			oldRightObject := answerLeft value.

			answerLeft value: newRightObject.
			aChosenAnswerHolder value: oldRightObject.
	]].

	"Answer if correct"
	^ correct