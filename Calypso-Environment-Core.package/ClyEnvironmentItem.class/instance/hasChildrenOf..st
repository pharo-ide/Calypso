testing
hasChildrenOf: anEnvironmentScopeClass

	^properties anySatisfy: [ :each | 
		(each isKindOf: ClyChildrenTag) and: [ each childrenScope = anEnvironmentScopeClass ] ] 