tests
testExecution
		
	self queryInScope: ClyMethodScope of: { self class >> #methodWithHalt}.
	
	self assert: resultItems size equals: 1