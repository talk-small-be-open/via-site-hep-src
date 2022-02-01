rendering-visitor
renderTextInput: aPlaceholder on: html
	| answerHolder clozeInput popoverOptions solutionMaxSize |

	answerHolder := exercise answerOf: aPlaceholder.
	solutionMaxSize := (aPlaceholder solutions collect: [:each | each size])
		ifEmpty: [5]
		ifNotEmpty: [:c | c max max: 3].

	clozeInput := html textInput
		ensureId;
		noAuto;
		class: 'clozeTextPlaceholder';
		class: 'wrong' if: (self isca: answerHolder isWrong);
		class: 'correct' if: (self isca: answerHolder isCorrect);
		class: 'markedAsEmpty' if: (answerHolder isExplicitBlank);
		class: aPlaceholder uiStyle;
		style: ('width: ', solutionMaxSize greaseString, 'em;');
		callback: [:value |
			value = aPlaceholder blankPlaceholder ifTrue: [ answerHolder beExplicitBlank ] ifFalse: [
				answerHolder value: (self sanitizeClozeInput: value) ] ].


	aPlaceholder offerBlankChoice ifTrue: [
		html span
			class: 'markAsEmpty';
			onClick: ('textinput_markAsEmpty(event, "', clozeInput id, '"); return false');
			with: [
				html iconBlank.
"				html t: 'exerciser:clozeInput:beEmpty'"].
	].

	
	((aPlaceholder isAutoShowHint and: [aPlaceholder hasHintText]) or: [ false "aPlaceholder offerBlankChoice" ]) ifTrue: [
		| popoverHtml |
		popoverHtml := String streamContents: [:s |
			s << (VIAHelper inlineHtmlFromPillar: aPlaceholder hintText).
			false "aPlaceholder offerBlankChoice" ifTrue: [ 
				s << ('&nbsp;<span class="markAsEmpty" onclick="textinput_markAsEmpty(event, ''', clozeInput id,'''); return false">').
				s << ('exerciser:clozeInput:beEmpty't).
				s << '</span>'].
		].
		
		popoverOptions := {
			#title->''.
			#content->popoverHtml.
			#closeable->false.
			#placement->'auto-top'.
			#trigger->'manual'.
			#multi->true.
			#padding->true.
		} asDictionary.
		
		clozeInput
			script: (html jQuery this call: 'webuiPopover' with: popoverOptions);
			onFocus: (html jQuery this call: 'webuiPopover' with: 'show');
			onBlur: (html jQuery this call: 'webuiPopover' with: 'hide').
	].

	aPlaceholder canShowInputMaskHint ifTrue: [
		clozeInput placeholder: aPlaceholder inputMaskHint].


	self isHideWrongAnswers
		ifTrue: [
			answerHolder ifNotWrong: [
				clozeInput value: answerHolder value]]
		ifFalse: [
			clozeInput value: answerHolder value].


	self renderCorrection: answerHolder on: html.

	aPlaceholder isAutoShowHint ifFalse: [
		self renderHintSymbolOf: aPlaceholder on: html ].