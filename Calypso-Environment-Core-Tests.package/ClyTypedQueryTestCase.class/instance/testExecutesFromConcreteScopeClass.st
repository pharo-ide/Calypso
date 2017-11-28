tests
testExecutesFromConcreteScopeClass

	self assert: (query executesFromScope: query scope class).
	self assert: (query executesFromScope: query scope class superclass).
	
	self deny: (query executesFromScope: ClyScopeExample2).