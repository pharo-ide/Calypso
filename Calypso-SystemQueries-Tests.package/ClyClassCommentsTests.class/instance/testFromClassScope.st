tests
testFromClassScope

	self queryFromScope: ClyClassScope ofAll: { self class. self class superclass }.
	
	self assert: resultItems size equals: 1.
	
	self assert: resultItems first equals: (ClyClassCommentItem of: self class)