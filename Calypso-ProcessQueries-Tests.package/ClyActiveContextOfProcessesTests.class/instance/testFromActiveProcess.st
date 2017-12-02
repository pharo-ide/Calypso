tests
testFromActiveProcess
	
	self queryInScope: ClyProcessScope of: { Processor activeProcess}.
		
	self assert: resultItems notEmpty