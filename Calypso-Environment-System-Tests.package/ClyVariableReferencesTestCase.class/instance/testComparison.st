tests
testComparison

	self 
		assert: (self queryClass of: {ClyInstanceVariable named: #x declaredIn: Point}) 
		equals: (self queryClass of: {ClyInstanceVariable named: #x declaredIn: Point}).
		
	self deny: (self queryClass of: {ClyInstanceVariable named: #x declaredIn: Point})
					 = (self queryClass of: (ClyInstanceVariable named: #y declaredIn: Point))