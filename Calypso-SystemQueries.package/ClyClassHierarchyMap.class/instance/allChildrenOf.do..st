accessing
allChildrenOf: aClass do: blockWithClass

	| children |
	children := parentMap at: aClass ifAbsent: [ ^self ].
	children do: [:eachChild | 
		blockWithClass value: eachChild.
		self allChildrenOf: eachChild do: blockWithClass]