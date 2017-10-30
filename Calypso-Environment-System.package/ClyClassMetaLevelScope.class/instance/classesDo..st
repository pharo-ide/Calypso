enumerating
classesDo: aBlock

	basisObjects do: [ :each | 
		aBlock value: (self class resolveClass: each) ]