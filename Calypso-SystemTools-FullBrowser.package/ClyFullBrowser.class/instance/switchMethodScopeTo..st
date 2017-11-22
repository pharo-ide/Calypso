navigation
switchMethodScopeTo: aClassScope

	self changeStateBy: [
		methodGroupQuery := methodGroupQuery withScope: aClassScope.
		methodGroupView showQuery: methodGroupQuery.
		self showMethodsForGroups: self methodGroupSelection]