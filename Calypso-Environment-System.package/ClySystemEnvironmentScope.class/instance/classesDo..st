queries
classesDo: aBlock
	
	self system classes do: [:each | 
		aBlock value: each instanceSide.
		aBlock value: each classSide]