tests
testComparison

	self 
		assert: (ClyMethodSources withString: 'test substring') 
		equals: (ClyMethodSources withString: 'test ', 'substring').
		
	self 
		assert: (ClyMethodSources withString: 'test substring') hash
		equals: (ClyMethodSources withString: 'test ', 'substring') hash.
		
	self deny: (ClyMethodSources withString: 'test substring')
					 = (ClyMethodSources withString: 'another substring')