navigation
show: aMethodQuery inScope: anEnvironmentScope

	self changeNavigationStateBy: [
		systemQuery := aMethodQuery withResult: self requiredQueryResult.
		self showMethodsInScope: anEnvironmentScope
	]