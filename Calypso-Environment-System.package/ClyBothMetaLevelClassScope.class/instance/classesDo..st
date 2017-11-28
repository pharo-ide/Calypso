enumerating
classesDo: aBlock

	basisObjects do: [ :each | 
		aBlock value: each instanceSide ]