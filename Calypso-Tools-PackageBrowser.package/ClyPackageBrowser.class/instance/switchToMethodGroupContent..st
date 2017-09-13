navigation
switchToMethodGroupContent: contentClass

	| newDS |
	self changeNavigationStateBy: [
		methodGroupContent := contentClass.
		newDS := methodGroupView dataSource withNewContent: methodGroupContent.
		methodGroupView dataSource: newDS.
		self showMethodsForGroups: self selectedMethodGroups]