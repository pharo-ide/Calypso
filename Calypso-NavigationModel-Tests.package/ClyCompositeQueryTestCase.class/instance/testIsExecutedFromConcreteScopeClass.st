tests
testIsExecutedFromConcreteScopeClass

	self assert: (query isExecutedFromScope: ClyScopeExample).
	self assert: (query isExecutedFromScope: ClyScope).
	
	self deny: (query isExecutedFromScope: Array).