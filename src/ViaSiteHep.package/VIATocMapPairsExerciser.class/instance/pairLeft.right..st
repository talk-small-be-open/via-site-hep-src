ajax
pairLeft: aLeftPair right: aRightPair
	| answerLeft answerRight newRightObject oldRightObject |

	"Exchange objects"
	answerLeft := self exercise answerOf: aLeftPair.
	answerRight := self exercise answerOf: aRightPair.

	newRightObject := answerRight value.
	oldRightObject := answerLeft value.

	answerLeft value: newRightObject.
	answerRight value: oldRightObject.

	"Answer if correct"
	^ aLeftPair isValidAnswer: newRightObject