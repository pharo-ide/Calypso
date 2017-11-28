navigation
allNavigationScopes
	
	| localClassScope hierarchyScope |
	localClassScope := self classSelection asItemsScope: ClyBothMetaLevelClassScope.
	hierarchyScope := localClassScope , localClassScope asInheritedScope
		, localClassScope asScope: ClySubclassScope.
	^super allNavigationScopes, { 
		self packageSelection asItemsScope: ClyPackageScope. 
		hierarchyScope. 
		localClassScope }