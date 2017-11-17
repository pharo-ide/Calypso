navigation
switchMethodScopeTo: aClassScope

	| newDS |
	newDS := methodGroupView dataSource withNewScope: aClassScope.

	self changeNavigationStateBy: [
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]