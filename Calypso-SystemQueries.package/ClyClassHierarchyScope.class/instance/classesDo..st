queries
classesDo: aBlock

	basisObjects do: [ :each | 
		self allClassesRelatedTo: each do: aBlock]