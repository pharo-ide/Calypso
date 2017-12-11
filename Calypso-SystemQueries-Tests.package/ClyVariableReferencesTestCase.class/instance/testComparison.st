tests
testComparison

	self 
		assert: (self queryClass of: {ClyInstanceVariable named: #x definedIn: Point}) 
		equals: (self queryClass of: {ClyInstanceVariable named: #x definedIn: Point}).
	
	self 
		assert: (self queryClass of: {ClyInstanceVariable named: #x definedIn: Point}) hash 
		equals: (self queryClass of: {ClyInstanceVariable named: #x definedIn: Point}) hash.
			
	self deny: (self queryClass of: {ClyInstanceVariable named: #x definedIn: Point})
					 = (self queryClass of: (ClyInstanceVariable named: #y definedIn: Point))