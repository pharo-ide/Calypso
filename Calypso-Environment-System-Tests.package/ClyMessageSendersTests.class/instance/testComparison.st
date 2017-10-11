tests
testComparison

	self 
		assert: (ClyMessageSenders of: #(message1)) 
		equals: (ClyMessageSenders of: #(message1)).
	
	self 
		assert: (ClyMessageSenders of: #(message1)) hash 
		equals: (ClyMessageSenders of: #(message1)) hash.
		
	self deny: (ClyMessageSenders of: #(message1)) = (ClyMessageSenders of: #(message2))