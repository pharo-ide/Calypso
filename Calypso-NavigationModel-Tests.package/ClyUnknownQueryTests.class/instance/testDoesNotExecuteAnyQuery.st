tests
testDoesNotExecuteAnyQuery
	
	self deny: (query executesQuery: #any)