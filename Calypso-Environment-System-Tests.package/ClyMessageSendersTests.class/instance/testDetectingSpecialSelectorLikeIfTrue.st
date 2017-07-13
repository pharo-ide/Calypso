tests
testDetectingSpecialSelectorLikeIfTrue

	| allMethods |
	query := ClyMessageSenders of: #(#ifTrue:).
	
	allMethods := self executeQueryInScope: ClyMethodScope of: { self class >> #senderOfIfTrue}.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (self class >> #senderOfIfTrue)