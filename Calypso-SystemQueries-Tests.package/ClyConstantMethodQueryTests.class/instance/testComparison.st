tests
testComparison

	self 
		assert: (ClyConstantMethodQuery with: {self class >> #method1}) 
		equals: (ClyConstantMethodQuery with: {self class >> #method1}).
	
	self 
		assert: (ClyConstantMethodQuery with: {self class >> #method1}) hash 
		equals: (ClyConstantMethodQuery with: {self class >> #method1}) hash.
		
	self deny: (ClyConstantMethodQuery with: {self class >> #method1}) = (ClyConstantMethodQuery with: {self class >> #method2})