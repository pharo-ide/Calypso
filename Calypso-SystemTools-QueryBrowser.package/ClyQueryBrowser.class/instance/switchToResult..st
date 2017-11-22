navigation
switchToResult: aQueryResult

	self changeStateBy: [
		DefaultQueryResult := aQueryResult.
		systemQuery := systemQuery withResult: aQueryResult.
		self showMethodsInScope: activeScope
	]