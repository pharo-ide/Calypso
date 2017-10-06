accessing
extraScopesOfSelectedItems
	| classScope |
	classScope := self classScopeOfSelectedItems.
	^{
		self packageScopeOfSelectedItems. 
		classScope asScope: ClySubclassScope.
		classScope
	}