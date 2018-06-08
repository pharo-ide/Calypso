scope creation
createInheritingScopeFrom: aClassScope

	| scope |
	scope := annotatedClass createInheritingScopeFrom: aClassScope.
	scope name: ClyClassScope inheritingScopeName.
	^scope