navigation
showResultOf: aMethodQuery

	self changeStateBy: [
		systemQuery := aMethodQuery withResult: self requiredQueryResult.
		self showQueryResult
	]