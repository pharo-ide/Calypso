navigation
show: aMethodQuery inScope: anEnvironmentScope

	self changeNavigationStateBy: [
		systemQuery := aMethodQuery withResultContent: self resultContent.
		self showMethodsInScope: anEnvironmentScope
	]