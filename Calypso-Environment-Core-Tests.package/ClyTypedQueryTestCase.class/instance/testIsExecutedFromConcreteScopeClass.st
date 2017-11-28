tests
testIsExecutedFromConcreteScopeClass

	self assert: (query isExecutedFromScope: query scope class).
	self assert: (query isExecutedFromScope: query scope class superclass).
	
	self deny: (query isExecutedFromScope: ClyScopeExample2).