inherited scope
createInheritingScopeFrom: aClassScope
	^(aClassScope asScope: ClyMultipleClassRelationScope)
		relationScopeClasses: { ClySubclassScope. ClyTraitUserScope }