building
hierarchyPairsOf: aClass do: parentAndChildBlock
	
	self childrenOf: aClass do: [:eachChild |
		parentAndChildBlock value: aClass value: eachChild.
		self hierarchyPairsOf: eachChild do: parentAndChildBlock].