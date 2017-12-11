accessing
extraScopesOfSelectedItems
	| classScope |
	classScope := self classScopeOfSelectedItems.
	^{
		self packageScopeOfSelectedItems. 
		classScope asFullHierarchyScope.
		classScope
	}