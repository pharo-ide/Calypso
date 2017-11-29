navigation
switchScopeTo: aScope
	
	self changeStateBy: [
		systemQuery := systemQuery withScope: aScope.
		self showQueryResult]