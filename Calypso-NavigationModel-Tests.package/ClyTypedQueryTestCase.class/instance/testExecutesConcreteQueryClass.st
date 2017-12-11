tests
testExecutesConcreteQueryClass
	
	self assert: (query executesQuery: query class).
	self assert: (query executesQuery: query class superclass).
	
	self deny: (query executesQuery: ClyQueryExampleReturningScopeBasis2)