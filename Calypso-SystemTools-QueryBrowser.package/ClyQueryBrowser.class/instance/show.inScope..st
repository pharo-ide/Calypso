navigation
show: aMethodQuery inScope: anEnvironmentScope

	self changeStateBy: [
		systemQuery := aMethodQuery withResult: self requiredQueryResult.
		self showMethodsInScope: anEnvironmentScope
	]