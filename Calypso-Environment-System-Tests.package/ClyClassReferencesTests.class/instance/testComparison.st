tests
testComparison

	self 
		assert: (ClyClassReferences to: {Point}) 
		equals: (ClyClassReferences to: {Point}).
		
	self deny: (ClyClassReferences to: {Point})
					 = (ClyClassReferences to: {Rectangle})