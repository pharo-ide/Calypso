navigation
switchMethodScopeTo: aClassScope

	| newDS |
	newDS := methodGroupView dataSource withNewScope: aClassScope.

	self changeStateBy: [
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]