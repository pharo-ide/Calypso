tests
testComparison

	self 
		assert: (ClyMessageSenders of: #(message1)) 
		equals: (ClyMessageSenders of: #(message1)).
		
	self deny: (ClyMessageSenders of: #(message1)) = (ClyMessageSenders of: #(message2))