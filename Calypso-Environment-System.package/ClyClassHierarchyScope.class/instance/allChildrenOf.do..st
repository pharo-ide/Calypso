accessing
allChildrenOf: aClass do: aBlock

	self childrenOf: aClass do: [:each | 
		aBlock value: each.
		self allChildrenOf: each do: aBlock]