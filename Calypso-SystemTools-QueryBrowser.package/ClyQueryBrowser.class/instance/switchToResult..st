navigation
switchToResult: aQueryResult

	self changeNavigationStateBy: [
		DefaultQueryResult := aQueryResult.
		systemQuery := systemQuery withResult: aQueryResult.
		self showMethodsInScope: activeScope
	]