tests
testExecutesConcreteQueryClass
	query subqueries: { self subqueryInScopeOf: #() }.
	
	self deny: (query executesQuery: query class).
	
	self assert: (query executesQuery: query subqueries anyOne class).
	
	self deny: (query executesQuery: ClyQueryExampleReturningScopeBasis2)