scope creation
createScopeFrom: aClassScope withLocalScope: aLocalScopeClass

	| scope |
	scope := annotatedClass createInheritedScopeFrom: aClassScope withLocalScope: aLocalScopeClass.
	scope name: ClyClassScope inheritedScopeName.
	^scope