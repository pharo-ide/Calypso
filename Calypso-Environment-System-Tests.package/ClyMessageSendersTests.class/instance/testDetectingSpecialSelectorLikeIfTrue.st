tests
testDetectingSpecialSelectorLikeIfTrue

	query := ClyMessageSenders of: #(#ifTrue:).
	
	self queryInScope: ClyMethodScope of: { self class >> #senderOfIfTrue}.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (self class >> #senderOfIfTrue)