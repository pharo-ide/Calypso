navigation
showResultOf: aMethodQuery

	self changeNavigationStateBy: [
		systemQuery := aMethodQuery withResult: self requiredQueryResult.
		self showQueryResult
	]