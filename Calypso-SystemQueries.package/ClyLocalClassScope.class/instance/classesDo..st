queries
classesDo: aBlock
	basisObjects do: [:each | 
		self metaLevelsOf: each do: aBlock]