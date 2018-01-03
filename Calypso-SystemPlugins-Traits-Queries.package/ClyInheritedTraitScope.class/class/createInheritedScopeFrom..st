inherited scope
createInheritedScopeFrom: aClassScope
	^(aClassScope asScope: ClyMultipleClassRelationScope)
		relationScopeClasses: { ClySuperclassScope. self }