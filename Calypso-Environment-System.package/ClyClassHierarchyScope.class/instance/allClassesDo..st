accessing
allClassesDo: aBlock

	basisObjects do: [ :each | 
		self parentsOf: each do: aBlock.
		each isObsolete ifFalse: [ aBlock value: each].
		self allChildrenOf: each do: aBlock]