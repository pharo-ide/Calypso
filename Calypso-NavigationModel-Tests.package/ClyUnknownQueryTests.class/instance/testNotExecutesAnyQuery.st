tests
testNotExecutesAnyQuery
	
	self deny: (query executesQuery: nil)