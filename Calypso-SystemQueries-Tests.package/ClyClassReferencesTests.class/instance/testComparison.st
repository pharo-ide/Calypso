tests
testComparison

	self 
		assert: (ClyClassReferences to: Point) 
		equals: (ClyClassReferences to: Point).
	
	self 
		assert: (ClyClassReferences to: Point) hash 
		equals: (ClyClassReferences to: Point) hash.
		
	self deny: (ClyClassReferences to: Point)
					 = (ClyClassReferences to: Rectangle)