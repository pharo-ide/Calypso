navigation
showResultOf: aQuery
	
	self changeStateBy: [
		systemQuery := aQuery withResult: self requiredQueryResult.
		self showQueryResult
	]