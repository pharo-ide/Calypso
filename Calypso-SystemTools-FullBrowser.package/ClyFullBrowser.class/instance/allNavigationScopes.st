navigation
allNavigationScopes
	
	| classLocalScope |
	classLocalScope := self classSelection asItemsScope: ClyBothMetaLevelClassScope.

	^super allNavigationScopes, { 
		self packageSelection asItemsScope: ClyPackageScope. 
		classLocalScope asFullHierarchyScope. 
		classLocalScope }