navigation
switchScopeTo: aScope
	
	self changeStateBy: [
		systemQuery := systemQuery withScope: activeScope.
		self showQueryResult]