tests
testComparison

	self 
		assert: (ClyMessageImplementors of: #(message1)) 
		equals: (ClyMessageImplementors of: #(message1)).
	
	self 
		assert: (ClyMessageImplementors of: #(message1)) hash 
		equals: (ClyMessageImplementors of: #(message1)) hash.
		
	self deny: (ClyMessageImplementors of: #(message1)) = (ClyMessageImplementors of: #(message2))