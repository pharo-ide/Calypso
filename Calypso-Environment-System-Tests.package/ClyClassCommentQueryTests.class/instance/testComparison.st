tests
testComparison

	self 
		assert: (ClyClassCommentQuery withString: 'test substring') 
		equals: (ClyClassCommentQuery withString: 'test ', 'substring').
		
	self 
		assert: (ClyClassCommentQuery withString: 'test substring') hash
		equals: (ClyClassCommentQuery withString: 'test ', 'substring') hash.
		
	self deny: (ClyClassCommentQuery withString: 'test substring')
					 = (ClyClassCommentQuery withString: 'another substring')