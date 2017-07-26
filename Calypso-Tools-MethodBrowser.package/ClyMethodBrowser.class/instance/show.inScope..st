navigation
show: aMethodQuery inScope: anEnvironmentScope

	self changeNavigationStateBy: [
		methodQuery := aMethodQuery withResultContent: self resultContent.
		self showMethodsInScope: anEnvironmentScope
	]