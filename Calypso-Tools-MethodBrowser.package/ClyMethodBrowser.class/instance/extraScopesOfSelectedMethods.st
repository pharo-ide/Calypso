accessing
extraScopesOfSelectedMethods
	| classScope |
	classScope := self classScopeOfSelectedMethods.
	^{
		self packageScopeOfSelectedMethods. 
		classScope asScope: ClySubclassScope.
		classScope
	}