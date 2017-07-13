navigation
switchToResultContent: contentClass

	self changeNavigationStateBy: [
		DefaultResultContent := contentClass.
		methodQuery := methodQuery withResultContent: contentClass.
		self showMethodsInScope: activeScope
	]