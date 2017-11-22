navigation
switchToMethodGroupContent: contentClass

	| newDS |
	self changeStateBy: [
		methodGroupQuery := contentClass.
		newDS := methodGroupView dataSource withNewContent: methodGroupQuery.
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self methodGroupSelection]