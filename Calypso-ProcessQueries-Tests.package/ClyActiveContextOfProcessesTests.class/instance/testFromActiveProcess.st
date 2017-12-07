tests
testFromActiveProcess
	
	self queryFromScope: ClyProcessScope of: Processor activeProcess.
		
	self assert: resultItems notEmpty