navigation
restrictMethodVisibilityBy: aClassScope

	self changeStateBy: [
		methodGroupQuery := methodGroupQuery restrictedByScope: aClassScope.
		methodGroupView showQuery: methodGroupQuery.
		self showMethodsForGroups: self methodGroupSelection]