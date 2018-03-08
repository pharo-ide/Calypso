testing
canBeExecutedInContext: aCriticContext
	
	^aCriticContext hasSelectedItems and: [
		aCriticContext lastSelectedItem isMarkedWith: ClyBrokenCritiqueTag]