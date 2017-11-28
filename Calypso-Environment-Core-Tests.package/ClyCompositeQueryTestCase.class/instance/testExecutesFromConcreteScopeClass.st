tests
testExecutesFromConcreteScopeClass

	self assert: (query executesFromScope: ClyScopeExample).
	self assert: (query executesFromScope: ClyScope).
	
	self deny: (query executesFromScope: Array).