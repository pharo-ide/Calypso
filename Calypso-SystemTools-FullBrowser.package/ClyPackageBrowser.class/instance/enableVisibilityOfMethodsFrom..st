navigation
enableVisibilityOfMethodsFrom: aMethodGroup

	| newDS |
	newDS := methodGroupView dataSource withTransformedScopeBy: [ :scope | 
		aMethodGroup createClassScopeToShowMethodsIn: scope ].
	
	self changeNavigationStateBy: [
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]