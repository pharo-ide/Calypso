scope creation
createScopeFrom: aClassScope

	| scope |
	scope := annotatedClass createInheritedScopeFrom: aClassScope.
	scope name: ClyClassScope inheritedScopeName.
	^scope