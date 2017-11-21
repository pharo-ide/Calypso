navigation
switchToMethodGroupContent: contentClass

	| newDS |
	self changeNavigationStateBy: [
		methodGroupQuery := contentClass.
		newDS := methodGroupView dataSource withNewContent: methodGroupQuery.
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]