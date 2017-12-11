tests
testComparison

	self 
		assert: (ClyClassComments withString: 'test substring') 
		equals: (ClyClassComments withString: 'test ', 'substring').
		
	self 
		assert: (ClyClassComments withString: 'test substring') hash
		equals: (ClyClassComments withString: 'test ', 'substring') hash.
		
	self deny: (ClyClassComments withString: 'test substring')
					 = (ClyClassComments withString: 'another substring')