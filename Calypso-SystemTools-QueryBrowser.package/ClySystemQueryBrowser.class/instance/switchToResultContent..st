navigation
switchToResultContent: contentClass

	self changeNavigationStateBy: [
		DefaultResultContent := contentClass.
		systemQuery := systemQuery withResultContent: contentClass.
		self showMethodsInScope: activeScope
	]