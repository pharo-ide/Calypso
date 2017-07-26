tests
testComparison

	self 
		assert: (ClyConstantMethodQuery with: {self class >> #method1}) 
		equals: (ClyConstantMethodQuery with: {self class >> #method1}).
		
	self deny: (ClyConstantMethodQuery with: {self class >> #method1}) = (ClyConstantMethodQuery with: {self class >> #method2})