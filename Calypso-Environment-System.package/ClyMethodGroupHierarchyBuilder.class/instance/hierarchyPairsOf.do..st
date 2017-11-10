building
hierarchyPairsOf: aClass do: parentAndChildBlock
	
	self classesRelatedTo: aClass do: [:eachChild |
		parentAndChildBlock value: aClass value: eachChild.
		self hierarchyPairsOf: eachChild do: parentAndChildBlock].