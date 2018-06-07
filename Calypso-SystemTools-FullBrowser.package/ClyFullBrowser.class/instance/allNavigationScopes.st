navigation
allNavigationScopes
	
	| classLocalScope mainScopes |
	classLocalScope := self classSelection asItemsScope: ClyBothMetaLevelClassScope.
	mainScopes := super allNavigationScopes.
	self isScopedModeEnabled ifTrue: [ 
		mainScopes := mainScopes copyWith: packageView query scope ].
	^mainScopes , { 
		self packageSelection asItemsScope: ClyPackageScope. 
		classLocalScope asFullHierarchyScope. 
		classLocalScope }