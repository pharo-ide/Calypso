navigation
disableVisibilityOfMethodsFrom: aMethodGroup

	| newDS |
	newDS := methodGroupView dataSource withTransformedScopeBy: [ :scope | 
		aMethodGroup createClassScopeToHideMethodsIn: scope ].

	self changeNavigationStateBy: [
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]