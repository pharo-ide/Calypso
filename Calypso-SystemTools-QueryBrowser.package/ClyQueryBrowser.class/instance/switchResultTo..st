navigation
switchResultTo: aQueryResult

	self changeStateBy: [
		DefaultQueryResult := aQueryResult.
		systemQuery := systemQuery withResult: aQueryResult.
		self showQueryResult
	]