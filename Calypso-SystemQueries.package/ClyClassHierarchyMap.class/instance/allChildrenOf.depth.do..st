accessing
allChildrenOf: aClass depth: currentDepth do: blockWithClass

	| children childDepth |
	children := parentMap at: aClass ifAbsent: [ ^self ].
	childDepth := currentDepth + 1.
	children do: [:eachChild | 
		blockWithClass value: eachChild value: childDepth.
		self allChildrenOf: eachChild depth: childDepth do: blockWithClass]